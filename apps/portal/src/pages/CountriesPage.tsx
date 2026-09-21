import {
  useEffect,
  useState,
  type FormEvent,
} from 'react'
import {
  Globe2,
  Pencil,
  Plus,
  Power,
  PowerOff,
  RefreshCw,
  Save,
  X,
} from 'lucide-react'
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
  country?: Country
  error?: string
}

interface CountryForm {
  name: string
  iso_code: string
}

const emptyForm: CountryForm = {
  name: '',
  iso_code: '',
}

function CountriesPage() {
  const [countries, setCountries] = useState<Country[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [reloadKey, setReloadKey] = useState(0)

  const [editing, setEditing] = useState<Country | null>(null)
  const [isCreating, setIsCreating] = useState(false)
  const [form, setForm] = useState<CountryForm>(emptyForm)
  const [saving, setSaving] = useState(false)
  const [saveError, setSaveError] = useState('')
  const [togglingId, setTogglingId] = useState<number | null>(
    null
  )

  useEffect(() => {
    const controller = new AbortController()

    async function loadCountries() {
      setLoading(true)
      setError('')

      try {
        const response = await fetch(
          '/api/countries?include_inactive=1',
          {
            credentials: 'same-origin',
            signal: controller.signal,
          }
        )

        const data =
          (await response.json()) as CountriesResponse

        if (!response.ok || !data.success || !data.countries) {
          throw new Error(
            data.error || 'Ülke verileri yüklenemedi.'
          )
        }

        setCountries(data.countries)
      } catch (requestError) {
        if (
          requestError instanceof Error &&
          requestError.name !== 'AbortError'
        ) {
          setError(requestError.message)
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

  function openCreateModal() {
    setEditing(null)
    setIsCreating(true)
    setForm(emptyForm)
    setSaveError('')
  }

  function openEditModal(country: Country) {
    setEditing(country)
    setIsCreating(false)
    setForm({
      name: country.name,
      iso_code: country.iso_code,
    })
    setSaveError('')
  }

  function closeModal() {
    if (saving) {
      return
    }

    setEditing(null)
    setIsCreating(false)
    setSaveError('')
  }

  async function saveCountry(
    event: FormEvent<HTMLFormElement>
  ) {
    event.preventDefault()

    if (!isCreating && !editing) {
      return
    }

    setSaving(true)
    setSaveError('')

    const endpoint = isCreating
      ? '/api/countries'
      : `/api/countries/${editing?.id}`

    try {
      const response = await fetch(endpoint, {
        method: isCreating ? 'POST' : 'PATCH',
        credentials: 'same-origin',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          name: form.name.trim(),
          iso_code: form.iso_code.trim().toUpperCase(),
        }),
      })

      const data =
        (await response.json()) as CountriesResponse

      if (!response.ok || !data.success) {
        throw new Error(data.error || 'Ülke kaydedilemedi.')
      }

      setEditing(null)
      setIsCreating(false)
      setReloadKey((value) => value + 1)
    } catch (requestError) {
      setSaveError(
        requestError instanceof Error
          ? requestError.message
          : 'Ülke kaydedilemedi.'
      )
    } finally {
      setSaving(false)
    }
  }

  async function toggleCountry(country: Country) {
    const willActivate = country.is_active === 0

    if (
      !willActivate &&
      !window.confirm(
        `${country.name} pasif yapılsın mı? Bağlı veriler silinmeyecek.`
      )
    ) {
      return
    }

    setTogglingId(country.id)
    setError('')

    try {
      const response = await fetch(
        `/api/countries/${country.id}`,
        {
          method: 'PATCH',
          credentials: 'same-origin',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            is_active: willActivate,
          }),
        }
      )

      const data =
        (await response.json()) as CountriesResponse

      if (!response.ok || !data.success) {
        throw new Error(
          data.error || 'Ülke durumu değiştirilemedi.'
        )
      }

      setReloadKey((value) => value + 1)
    } catch (requestError) {
      setError(
        requestError instanceof Error
          ? requestError.message
          : 'Ülke durumu değiştirilemedi.'
      )
    } finally {
      setTogglingId(null)
    }
  }

  const activeCount = countries.filter(
    (country) => country.is_active === 1
  ).length
  const inactiveCount = countries.length - activeCount
  const modalOpen = isCreating || editing !== null

  return (
    <div className="countries-page">
      <div className="countries-header">
        <div>
          <p className="countries-eyebrow">Festival pazarları</p>
          <h1>Ülkeler</h1>
          <p>
            Araştırma yapılacak ülkeleri ekleyin ve aktiflik
            durumlarını yönetin.
          </p>
        </div>

        <div className="countries-header-actions">
          <button
            className="refresh-button"
            type="button"
            onClick={() => setReloadKey((value) => value + 1)}
            disabled={loading}
          >
            <RefreshCw
              size={17}
              className={loading ? 'is-spinning' : ''}
            />
            Yenile
          </button>

          <button
            className="country-primary-button"
            type="button"
            onClick={openCreateModal}
          >
            <Plus size={17} />
            Ülke ekle
          </button>
        </div>
      </div>

      <div className="countries-summaries">
        <div className="countries-summary">
          <Globe2 size={20} />
          <strong>{activeCount}</strong>
          <span>aktif ülke</span>
        </div>

        <div className="countries-summary countries-summary-muted">
          <PowerOff size={19} />
          <strong>{inactiveCount}</strong>
          <span>pasif ülke</span>
        </div>
      </div>

      {loading && (
        <div className="countries-message">
          Ülkeler yükleniyor…
        </div>
      )}

      {!loading && error && (
        <div className="countries-message countries-error">
          {error}
        </div>
      )}

      {!loading && countries.length === 0 && !error && (
        <div className="countries-message">
          Henüz ülke kaydı bulunmuyor.
        </div>
      )}

      {!loading && countries.length > 0 && (
        <div className="countries-grid">
          {countries.map((country) => {
            const isActive = country.is_active === 1
            const isToggling = togglingId === country.id

            return (
              <article
                className={`country-card ${
                  isActive ? '' : 'country-card-inactive'
                }`}
                key={country.id}
              >
                <div className="country-code">
                  {country.iso_code}
                </div>

                <div className="country-card-content">
                  <h2>{country.name}</h2>
                  <span
                    className={`country-status ${
                      isActive ? '' : 'country-status-inactive'
                    }`}
                  >
                    {isActive ? 'Aktif' : 'Pasif'}
                  </span>
                </div>

                <div className="country-card-actions">
                  <button
                    type="button"
                    onClick={() => openEditModal(country)}
                    aria-label={`${country.name} düzenle`}
                    title="Düzenle"
                  >
                    <Pencil size={16} />
                  </button>

                  <button
                    className={
                      isActive
                        ? 'country-deactivate-button'
                        : 'country-activate-button'
                    }
                    type="button"
                    onClick={() => void toggleCountry(country)}
                    disabled={isToggling}
                    aria-label={
                      isActive
                        ? `${country.name} pasif yap`
                        : `${country.name} aktifleştir`
                    }
                    title={
                      isActive ? 'Pasif yap' : 'Aktifleştir'
                    }
                  >
                    {isActive ? (
                      <PowerOff size={16} />
                    ) : (
                      <Power size={16} />
                    )}
                  </button>
                </div>
              </article>
            )
          })}
        </div>
      )}

      {modalOpen && (
        <div className="country-modal-backdrop">
          <section
            className="country-modal"
            role="dialog"
            aria-modal="true"
            aria-labelledby="country-modal-title"
          >
            <header>
              <div>
                <span>
                  {isCreating ? 'Yeni pazar' : 'Ülkeyi düzenle'}
                </span>
                <h2 id="country-modal-title">
                  {isCreating
                    ? 'Yeni ülke ekle'
                    : editing?.name}
                </h2>
              </div>

              <button
                type="button"
                onClick={closeModal}
                aria-label="Pencereyi kapat"
              >
                <X size={20} />
              </button>
            </header>

            <form onSubmit={saveCountry}>
              <label>
                Ülke adı
                <input
                  type="text"
                  value={form.name}
                  onChange={(event) =>
                    setForm((current) => ({
                      ...current,
                      name: event.target.value,
                    }))
                  }
                  minLength={2}
                  maxLength={100}
                  required
                  autoFocus
                  placeholder="Örnek: Germany"
                />
              </label>

              <label>
                ISO ülke kodu
                <input
                  className="country-iso-input"
                  type="text"
                  value={form.iso_code}
                  onChange={(event) =>
                    setForm((current) => ({
                      ...current,
                      iso_code: event.target.value
                        .toUpperCase()
                        .slice(0, 2),
                    }))
                  }
                  minLength={2}
                  maxLength={2}
                  pattern="[A-Za-z]{2}"
                  required
                  placeholder="DE"
                />
              </label>

              <p className="country-form-help">
                ISO kodu iki harften oluşmalıdır. Örneğin
                Almanya için DE.
              </p>

              {saveError && (
                <div className="country-save-error">
                  {saveError}
                </div>
              )}

              <footer>
                <button
                  className="country-cancel-button"
                  type="button"
                  onClick={closeModal}
                  disabled={saving}
                >
                  Vazgeç
                </button>

                <button
                  className="country-save-button"
                  type="submit"
                  disabled={saving}
                >
                  <Save size={17} />
                  {saving ? 'Kaydediliyor…' : 'Kaydet'}
                </button>
              </footer>
            </form>
          </section>
        </div>
      )}
    </div>
  )
}

export default CountriesPage
