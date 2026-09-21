import { pbkdf2Sync, randomBytes } from 'node:crypto'
import { spawnSync } from 'node:child_process'
import { createInterface } from 'node:readline/promises'
import { stdin as input, stdout as output } from 'node:process'

const iterations = 100000
const readline = createInterface({ input, output })

const email = (await readline.question('Yönetici e-posta adresi: '))
  .trim()
  .toLowerCase()

const displayName = (await readline.question('Görünen ad: ')).trim()

readline.close()

if (!email.includes('@') || !displayName) {
  console.error('Geçerli bir e-posta adresi ve görünen ad gerekli.')
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

const escapeSql = (value) => value.replaceAll("'", "''")

const sql = `
  INSERT INTO users (
    email,
    display_name,
    password_hash,
    password_salt,
    password_iterations,
    role,
    is_active
  )
  VALUES (
    '${escapeSql(email)}',
    '${escapeSql(displayName)}',
    '${passwordHash}',
    '${salt}',
    ${iterations},
    'admin',
    1
  );
`

const result = spawnSync(
  'npx',
  [
    'wrangler',
    'd1',
    'execute',
    'DB',
    '--remote',
    '--command',
    sql,
  ],
  {
    cwd: process.cwd(),
    stdio: 'inherit',
  }
)

if (result.status !== 0) {
  console.error('Yönetici hesabı oluşturulamadı.')
  process.exit(result.status ?? 1)
}

console.log('\nYönetici hesabı oluşturuldu.')
console.log(`E-posta: ${email}`)
console.log(`Geçici parola: ${password}`)
console.log('\nBu parolayı şimdi güvenli bir parola yöneticisine kaydedin.')