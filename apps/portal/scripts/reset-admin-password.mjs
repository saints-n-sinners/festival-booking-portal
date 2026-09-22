import { pbkdf2Sync, randomBytes } from 'node:crypto'
import { spawnSync } from 'node:child_process'
import { createInterface } from 'node:readline/promises'
import {
  stdin as input,
  stdout as output,
} from 'node:process'

const iterations = 100000

if (!input.isTTY || !output.isTTY || !input.setRawMode) {
  console.error('Parolayı gizli girmek için bu betiği doğrudan Terminal içinde çalıştırın.')
  process.exit(1)
}

const readline = createInterface({ input, output })
let email

try {
  email = (await readline.question('Kullanıcı e-posta adresi: '))
    .trim()
    .toLowerCase()
} finally {
  readline.close()
}

if (!email.includes('@')) {
  console.error('Geçerli bir e-posta adresi girilmedi.')
  process.exit(1)
}

function readSecret(prompt) {
  return new Promise((resolve, reject) => {
    let secret = ''
    const wasRaw = input.isRaw ?? false

    function finish(error) {
      input.off('data', onData)
      input.setRawMode(wasRaw)
      input.pause()
      output.write('\n')

      if (error) {
        reject(error)
      } else {
        resolve(secret)
      }
    }

    function onData(chunk) {
      for (const character of chunk) {
        if (character === '\r' || character === '\n') {
          finish()
          return
        }

        if (character === '\u0003' || character === '\u0004') {
          finish(new Error('İşlem iptal edildi.'))
          return
        }

        if (character === '\u007f' || character === '\b') {
          secret = Array.from(secret).slice(0, -1).join('')
          continue
        }

        if (character >= ' ' && secret.length < 128) {
          secret += character
        }
      }
    }

    output.write(prompt)
    input.setRawMode(true)
    input.setEncoding('utf8')
    input.on('data', onData)
    input.resume()
  })
}

let password
let confirmation

try {
  password = await readSecret('Yeni parola (yazarken görünmez): ')
  confirmation = await readSecret('Yeni parola tekrar: ')
} catch (error) {
  console.error(error instanceof Error ? error.message : 'İşlem iptal edildi.')
  process.exit(1)
}

if (password.length < 8) {
  console.error('Parola en az 8 karakter olmalıdır.')
  process.exit(1)
}

if (password !== confirmation) {
  console.error('Parolalar eşleşmiyor. Değişiklik yapılmadı.')
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

console.log('\nParola başarıyla değiştirildi.')
console.log(`Kullanıcı: ${user.display_name}`)
console.log(`E-posta: ${email}`)
console.log('Eski oturumlar kapatıldı. Yeni parolayı parola yöneticisine kaydedin.')
