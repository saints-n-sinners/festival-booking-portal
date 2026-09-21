import {
  useEffect,
  useState,
  type FormEvent,
  type ReactNode,
} from 'react'
import { LoaderCircle, LockKeyhole } from 'lucide-react'
import './AuthGate.css'

interface AuthGateProps {
  children: ReactNode
}

interface AuthUser {
  id: number
  email: string
  display_name: string
  role: 'admin' | 'member'
}

interface AuthResponse {
  success: boolean
  authenticated?: boolean
  user?: AuthUser
  error?: string
}

function AuthGate({ children }: AuthGateProps) {
  const [status, setStatus] = useState<
    'checking' | 'anonymous' | 'authenticated'
  >('checking')

  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [submitting, setSubmitting] = useState(false)
  const [error, setError] = useState('')

  useEffect(() => {
    const controller = new AbortController()

    async function checkSession() {
      try {
        const response = await fetch('/api/auth/me', {
          signal: controller.signal,
          credentials: 'same-origin',
        })

        if (response.ok) {
          const data = (await response.json()) as AuthResponse

          if (data.authenticated && data.user) {
            setStatus('authenticated')
            return
          }
        }

        setStatus('anonymous')
      } catch (requestError) {
        if (
          requestError instanceof Error &&
          requestError.name !== 'AbortError'
        ) {
          setStatus('anonymous')
        }
      }
    }

    void checkSession()

    return () => controller.abort()
  }, [])

  async function handleLogin(event: FormEvent<HTMLFormElement>) {
    event.preventDefault()
    setSubmitting(true)
    setError('')

    try {
      const response = await fetch('/api/auth/login', {
        method: 'POST',
        credentials: 'same-origin',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ email, password }),
      })

      const data = (await response.json()) as AuthResponse

      if (!response.ok || !data.success || !data.user) {
        setError(data.error || 'Giriş yapılamadı.')
        return
      }

      setPassword('')
      setStatus('authenticated')
    } catch {
      setError('Sunucuya ulaşılamadı. Lütfen tekrar deneyin.')
    } finally {
      setSubmitting(false)
    }
  }

  if (status === 'checking') {
    return (
      <div className="auth-loading">
        <LoaderCircle className="auth-spinner" size={32} />
        <span>Oturum kontrol ediliyor…</span>
      </div>
    )
  }

  if (status === 'anonymous') {
    return (
      <main className="login-page">
        <section className="login-card">
          <div className="login-brand">SNS</div>

          <div className="login-heading">
            <p>SAINTS ’N’ SINNERS</p>
            <h1>Booking Portal</h1>
            <span>Devam etmek için yönetici hesabınızla giriş yapın.</span>
          </div>

          <form className="login-form" onSubmit={handleLogin}>
            <label>
              E-posta
              <input
                type="email"
                value={email}
                onChange={(event) => setEmail(event.target.value)}
                autoComplete="email"
                required
              />
            </label>

            <label>
              Parola
              <input
                type="password"
                value={password}
                onChange={(event) => setPassword(event.target.value)}
                autoComplete="current-password"
                required
              />
            </label>

            {error && (
              <div className="login-error" role="alert">
                {error}
              </div>
            )}

            <button type="submit" disabled={submitting}>
              {submitting ? (
                <>
                  <LoaderCircle className="auth-spinner" size={18} />
                  Giriş yapılıyor…
                </>
              ) : (
                <>
                  <LockKeyhole size={18} />
                  Giriş yap
                </>
              )}
            </button>
          </form>
        </section>
      </main>
    )
  }

  return children
}

export default AuthGate