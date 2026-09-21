/// <reference types="@cloudflare/workers-types" />

export interface Env {
  DB: D1Database
}

export interface SessionUser {
  id: number
  email: string
  display_name: string
  role: 'admin' | 'member'
}

interface LoginAttempt {
  failed_count: number
  first_failed_at: string
  locked_until: string | null
}

const SESSION_COOKIE = 'festival_session'
const SESSION_SECONDS = 60 * 60 * 24 * 7
const MAX_LOGIN_FAILURES = 5
const LOGIN_WINDOW_MS = 15 * 60 * 1000
const LOCK_DURATION_MS = 15 * 60 * 1000

const encoder = new TextEncoder()

function bytesToBase64(bytes: Uint8Array): string {
  let binary = ''

  for (const byte of bytes) {
    binary += String.fromCharCode(byte)
  }

  return btoa(binary)
}

function base64ToBytes(value: string): Uint8Array {
  const binary = atob(value)
  const bytes = new Uint8Array(binary.length)

  for (let index = 0; index < binary.length; index += 1) {
    bytes[index] = binary.charCodeAt(index)
  }

  return bytes
}

function bytesToHex(bytes: Uint8Array): string {
  return Array.from(bytes)
    .map((byte) => byte.toString(16).padStart(2, '0'))
    .join('')
}

function constantTimeEqual(first: string, second: string): boolean {
  const firstBytes = base64ToBytes(first)
  const secondBytes = base64ToBytes(second)

  if (firstBytes.length !== secondBytes.length) {
    return false
  }

  let difference = 0

  for (let index = 0; index < firstBytes.length; index += 1) {
    difference |= firstBytes[index] ^ secondBytes[index]
  }

  return difference === 0
}

export function normalizeEmail(email: string): string {
  return email.trim().toLowerCase()
}

export async function derivePasswordHash(
  password: string,
  saltBase64: string,
  iterations: number
): Promise<string> {
  const keyMaterial = await crypto.subtle.importKey(
    'raw',
    encoder.encode(password),
    'PBKDF2',
    false,
    ['deriveBits']
  )

  const derivedBits = await crypto.subtle.deriveBits(
    {
      name: 'PBKDF2',
      hash: 'SHA-256',
      salt: base64ToBytes(saltBase64),
      iterations,
    },
    keyMaterial,
    256
  )

  return bytesToBase64(new Uint8Array(derivedBits))
}

export async function verifyPassword(
  password: string,
  expectedHash: string,
  saltBase64: string,
  iterations: number
): Promise<boolean> {
  const actualHash = await derivePasswordHash(
    password,
    saltBase64,
    iterations
  )

  return constantTimeEqual(actualHash, expectedHash)
}

async function hashSessionToken(token: string): Promise<string> {
  const digest = await crypto.subtle.digest(
    'SHA-256',
    encoder.encode(token)
  )

  return bytesToHex(new Uint8Array(digest))
}

function generateSessionToken(): string {
  const bytes = new Uint8Array(32)
  crypto.getRandomValues(bytes)

  return bytesToBase64(bytes)
    .replaceAll('+', '-')
    .replaceAll('/', '_')
    .replaceAll('=', '')
}

function getCookie(request: Request, name: string): string | null {
  const cookieHeader = request.headers.get('Cookie')

  if (!cookieHeader) {
    return null
  }

  for (const cookie of cookieHeader.split(';')) {
    const [cookieName, ...valueParts] = cookie.trim().split('=')

    if (cookieName === name) {
      return valueParts.join('=')
    }
  }

  return null
}

export async function createSession(
  env: Env,
  userId: number
): Promise<string> {
  const token = generateSessionToken()
  const tokenHash = await hashSessionToken(token)
  const expiresAt = new Date(
    Date.now() + SESSION_SECONDS * 1000
  ).toISOString()

  await env.DB.prepare(
    `DELETE FROM sessions
     WHERE datetime(expires_at) <= datetime('now')`
  ).run()

  await env.DB.prepare(
    `INSERT INTO sessions (user_id, token_hash, expires_at)
     VALUES (?, ?, ?)`
  )
    .bind(userId, tokenHash, expiresAt)
    .run()

  return token
}

export function createSessionCookie(token: string): string {
  return [
    `${SESSION_COOKIE}=${token}`,
    'Path=/',
    'HttpOnly',
    'Secure',
    'SameSite=Strict',
    `Max-Age=${SESSION_SECONDS}`,
  ].join('; ')
}

export function createExpiredSessionCookie(): string {
  return [
    `${SESSION_COOKIE}=`,
    'Path=/',
    'HttpOnly',
    'Secure',
    'SameSite=Strict',
    'Max-Age=0',
  ].join('; ')
}

export async function getCurrentUser(
  request: Request,
  env: Env
): Promise<SessionUser | null> {
  const token = getCookie(request, SESSION_COOKIE)

  if (!token) {
    return null
  }

  const tokenHash = await hashSessionToken(token)

  return env.DB.prepare(
    `SELECT
       users.id,
       users.email,
       users.display_name,
       users.role
     FROM sessions
     INNER JOIN users ON users.id = sessions.user_id
     WHERE sessions.token_hash = ?
       AND datetime(sessions.expires_at) > datetime('now')
       AND users.is_active = 1
     LIMIT 1`
  )
    .bind(tokenHash)
    .first<SessionUser>()
}

export async function deleteCurrentSession(
  request: Request,
  env: Env
): Promise<void> {
  const token = getCookie(request, SESSION_COOKIE)

  if (!token) {
    return
  }

  const tokenHash = await hashSessionToken(token)

  await env.DB.prepare(
    'DELETE FROM sessions WHERE token_hash = ?'
  )
    .bind(tokenHash)
    .run()
}

export async function isLoginLocked(
  env: Env,
  identifier: string
): Promise<boolean> {
  const attempt = await env.DB.prepare(
    `SELECT failed_count, first_failed_at, locked_until
     FROM login_attempts
     WHERE identifier = ?`
  )
    .bind(identifier)
    .first<LoginAttempt>()

  if (!attempt?.locked_until) {
    return false
  }

  return Date.parse(attempt.locked_until) > Date.now()
}

export async function recordLoginFailure(
  env: Env,
  identifier: string
): Promise<void> {
  const now = Date.now()

  const existing = await env.DB.prepare(
    `SELECT failed_count, first_failed_at, locked_until
     FROM login_attempts
     WHERE identifier = ?`
  )
    .bind(identifier)
    .first<LoginAttempt>()

  const isSameWindow =
    existing &&
    now - Date.parse(existing.first_failed_at) <= LOGIN_WINDOW_MS

  const failedCount = isSameWindow
    ? existing.failed_count + 1
    : 1

  const firstFailedAt = isSameWindow
    ? existing.first_failed_at
    : new Date(now).toISOString()

  const lockedUntil =
    failedCount >= MAX_LOGIN_FAILURES
      ? new Date(now + LOCK_DURATION_MS).toISOString()
      : null

  await env.DB.prepare(
    `INSERT INTO login_attempts (
       identifier,
       failed_count,
       first_failed_at,
       locked_until,
       updated_at
     )
     VALUES (?, ?, ?, ?, CURRENT_TIMESTAMP)
     ON CONFLICT(identifier) DO UPDATE SET
       failed_count = excluded.failed_count,
       first_failed_at = excluded.first_failed_at,
       locked_until = excluded.locked_until,
       updated_at = CURRENT_TIMESTAMP`
  )
    .bind(
      identifier,
      failedCount,
      firstFailedAt,
      lockedUntil
    )
    .run()
}

export async function clearLoginFailures(
  env: Env,
  identifier: string
): Promise<void> {
  await env.DB.prepare(
    'DELETE FROM login_attempts WHERE identifier = ?'
  )
    .bind(identifier)
    .run()
}