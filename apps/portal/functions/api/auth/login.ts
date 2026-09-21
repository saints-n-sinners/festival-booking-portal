/// <reference types="@cloudflare/workers-types" />

import {
  clearLoginFailures,
  createSession,
  createSessionCookie,
  derivePasswordHash,
  isLoginLocked,
  normalizeEmail,
  recordLoginFailure,
  verifyPassword,
  type Env,
  type SessionUser,
} from '../../_lib/auth'

interface UserRecord extends SessionUser {
  password_hash: string
  password_salt: string
  password_iterations: number
  is_active: number
}

interface LoginBody {
  email?: unknown
  password?: unknown
}

const DUMMY_SALT = 'AAAAAAAAAAAAAAAAAAAAAA=='

function jsonResponse(
  body: unknown,
  status: number,
  headers: HeadersInit = {}
): Response {
  return Response.json(body, {
    status,
    headers: {
      'Cache-Control': 'no-store',
      ...headers,
    },
  })
}

export const onRequestPost: PagesFunction<Env> = async (context) => {
  let body: LoginBody

  try {
    body = (await context.request.json()) as LoginBody
  } catch {
    return jsonResponse(
      { success: false, error: 'Geçersiz istek.' },
      400
    )
  }

  if (
    typeof body.email !== 'string' ||
    typeof body.password !== 'string'
  ) {
    return jsonResponse(
      { success: false, error: 'E-posta ve parola gerekli.' },
      400
    )
  }

  const email = normalizeEmail(body.email)
  const password = body.password

  if (
    !email.includes('@') ||
    email.length > 254 ||
    password.length < 8 ||
    password.length > 256
  ) {
    return jsonResponse(
      { success: false, error: 'E-posta veya parola hatalı.' },
      401
    )
  }

  if (await isLoginLocked(context.env, email)) {
    return jsonResponse(
      {
        success: false,
        error: 'Çok fazla hatalı giriş denemesi. 15 dakika sonra tekrar deneyin.',
      },
      429
    )
  }

  const user = await context.env.DB.prepare(
    `SELECT
       id,
       email,
       display_name,
       role,
       password_hash,
       password_salt,
       password_iterations,
       is_active
     FROM users
     WHERE email = ?
     LIMIT 1`
  )
    .bind(email)
    .first<UserRecord>()

  let passwordIsValid = false

  if (user) {
    passwordIsValid = await verifyPassword(
      password,
      user.password_hash,
      user.password_salt,
      user.password_iterations
    )
  } else {
    await derivePasswordHash(password, DUMMY_SALT, 100000)
  }

  if (!user || !passwordIsValid || user.is_active !== 1) {
    await recordLoginFailure(context.env, email)

    return jsonResponse(
      { success: false, error: 'E-posta veya parola hatalı.' },
      401
    )
  }

  await clearLoginFailures(context.env, email)

  const sessionToken = await createSession(context.env, user.id)

  await context.env.DB.prepare(
    `UPDATE users
     SET last_login_at = CURRENT_TIMESTAMP,
         updated_at = CURRENT_TIMESTAMP
     WHERE id = ?`
  )
    .bind(user.id)
    .run()

  return jsonResponse(
    {
      success: true,
      user: {
        id: user.id,
        email: user.email,
        display_name: user.display_name,
        role: user.role,
      },
    },
    200,
    {
      'Set-Cookie': createSessionCookie(sessionToken),
    }
  )
}