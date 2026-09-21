import { useEffect, useState } from 'react'
import { Globe2, RefreshCw } from 'lucide-react'
import './CountriesPage.css'

interface Country {
  id: number
  name: string
  iso_code: string
  is_active: number
}

interface CountriesResponse {
  success: boolean
  countries?: Country[]
  error?: string
}

function CountriesPage() {
  const [countries, setCountries] = useState<Country[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [reloadKey, setReloadKey] = useState(0)

  useEffect(() => {
    const controller = new AbortController()

    async function loadCountries() {
      setLoading(true)
      setError('')

      try {
        const response = await fetch('/api/countries', {
          signal: controller.signal,
        })

        if (!response.ok) {
          throw new Error('API request failed')
        }

        const data = (await response.json()) as CountriesResponse

        if (!data.success || !data.countries) {
          throw new Error(data.error || 'Countries could not be loaded')
        }

        setCountries(data.countries)
      } catch (requestError) {
        if (requestError instanceof Error && requestError.name !== 'AbortError') {
          setError('Ülke verileri yüklenemedi.')
        }
      } finally {
        if (!controller.signal.aborted) {
          setLoading(false)
        }
      }
    }

    void loadCountries()

    return () => controller.abort()
  }, [reloadKey])

  return (
    <div className="countries-page">
      <div className="countries-header">
        <div>
          <p className="countries-eyebrow">Festival pazarları</p>
          <h1>Ülkeler</h1>
          <p>
            Aktif festival araştırması yapılan ülkeleri buradan takip
            edebilirsiniz.
          </p>
        </div>

        <button
          className="refresh-button"
          type="button"
          onClick={() => setReloadKey((value) => value + 1)}
          disabled={loading}
        >
          <RefreshCw size={17} className={loading ? 'is-spinning' : ''} />
          Yenile
        </button>
      </div>

      {loading && <div className="countries-message">Ülkeler yükleniyor…</div>}

      {!loading && error && (
        <div className="countries-message countries-error">{error}</div>
      )}

      {!loading && !error && (
        <>
          <div className="countries-summary">
            <Globe2 size={20} />
            <strong>{countries.length}</strong>
            <span>aktif ülke</span>
          </div>

          <div className="countries-grid">
            {countries.map((country) => (
              <article className="country-card" key={country.id}>
                <div className="country-code">{country.iso_code}</div>
                <div>
                  <h2>{country.name}</h2>
                  <span className="country-status">Aktif</span>
                </div>
              </article>
            ))}
          </div>
        </>
      )}
    </div>
  )
}

export default CountriesPage