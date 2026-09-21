import { pbkdf2Sync, randomBytes } from 'node:crypto'
import { spawnSync } from 'node:child_process'
import { createInterface } from 'node:readline/promises'
import {
  stdin as input,
  stdout as output,
} from 'node:process'

const iterations = 100000
const readline = createInterface({ input, output })

const email = (
  await readline.question('Yönetici e-posta adresi: ')
)
  .trim()
  .toLowerCase()

readline.close()

if (!email.includes('@')) {
  console.error('Geçerli bir e-posta adresi girilmedi.')
  process.exit(1)
}

const escapeSql = (value) => value.replaceAll("'", "''")

const lookupResult = spawnSync(
  'npx',
  [
    'wrangler',
    'd1',
    'execute',
    'DB',
    '--remote',
    '--json',
    '--command',
    `SELECT id, email, display_name
     FROM users
     WHERE email = '${escapeSql(email)}'
     LIMIT 1;`,
  ],
  {
    cwd: process.cwd(),
    encoding: 'utf8',
  }
)

if (lookupResult.status !== 0) {
  console.error(lookupResult.stderr)
  console.error('Kullanıcı sorgulanamadı.')
  process.exit(lookupResult.status ?? 1)
}

let lookupData

try {
  lookupData = JSON.parse(lookupResult.stdout)
} catch {
  console.error('Cloudflare yanıtı okunamadı.')
  process.exit(1)
}

const queryResults = Array.isArray(lookupData)
  ? lookupData.flatMap((item) => item.results ?? [])
  : lookupData.results ?? []

const user = queryResults[0]

if (!user) {
  console.error(`Bu e-posta adresiyle kullanıcı bulunamadı: ${email}`)
  process.exit(1)
}

const password = `${randomBytes(18).toString('base64url')}!A7`
const salt = randomBytes(16).toString('base64')

const passwordHash = pbkdf2Sync(
  password,
  Buffer.from(salt, 'base64'),
  iterations,
  32,
  'sha256'
).toString('base64')

const updateSql = `
  UPDATE users
  SET
    password_hash = '${passwordHash}',
    password_salt = '${salt}',
    password_iterations = ${iterations},
    updated_at = CURRENT_TIMESTAMP
  WHERE id = ${Number(user.id)};

  DELETE FROM sessions
  WHERE user_id = ${Number(user.id)};

  DELETE FROM login_attempts
  WHERE identifier = '${escapeSql(email)}';
`

const updateResult = spawnSync(
  'npx',
  [
    'wrangler',
    'd1',
    'execute',
    'DB',
    '--remote',
    '--command',
    updateSql,
  ],
  {
    cwd: process.cwd(),
    stdio: 'inherit',
  }
)

if (updateResult.status !== 0) {
  console.error('Parola güncellenemedi.')
  process.exit(updateResult.status ?? 1)
}

console.log('\nParola başarıyla sıfırlandı.')
console.log(`Kullanıcı: ${user.display_name}`)
console.log(`E-posta: ${email}`)
console.log(`Yeni parola: ${password}`)
console.log('\nYeni parolayı şimdi güvenli bir parola yöneticisine kaydedin.')