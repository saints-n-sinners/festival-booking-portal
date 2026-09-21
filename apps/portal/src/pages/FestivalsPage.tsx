import {
  useEffect,
  useState,
  type FormEvent,
} from 'react'
import {
  ChevronLeft,
  ChevronRight,
  ExternalLink,
  Mail,
  MapPin,
  Search,
} from 'lucide-react'
import './FestivalsPage.css'

interface Country {
  id: number
  name: string
  iso_code: string
}

interface CountriesResponse {
  success: boolean
  countries?: Country[]
}

interface Festival {
  id: number
  external_id: string
  name: string
  country: string
  country_code: string
  city: string
  genres: string
  scale: string
  scale_category: string
  event_type: string
  organizer: string | null
  website_url: string | null
  facebook_url: string | null
  instagram_url: string | null
  email: string | null
  phone: string | null
  priority: string
  is_stretch: number
  total_score: number
  confidence: string
  pipeline_status: string
  status_2027: string
  date_text: string
  application_window: string | null
  application_method: string
  application_status: string
  next_action: string
  last_verified: string
}

interface FestivalsResponse {
  success: boolean
  total?: number
  festivals?: Festival[]
  error?: string
}

const PAGE_SIZE = 25

function FestivalsPage() {
  const [countries, setCountries] = useState<Country[]>([])
  const [festivals, setFestivals] = useState<Festival[]>([])
  const [total, setTotal] = useState(0)

  const [searchInput, setSearchInput] = useState('')
  const [search, setSearch] = useState('')
  const [country, setCountry] = useState('')
  const [priority, setPriority] = useState('')
  const [pipelineStatus, setPipelineStatus] = useState('')

  const [page, setPage] = useState(0)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')

  useEffect(() => {
    const controller = new AbortController()

    async function loadCountries() {
      try {
        const response = await fetch('/api/countries', {
          credentials: 'same-origin',
          signal: controller.signal,
        })

        if (!response.ok) {
          return
        }

        const data =
          (await response.json()) as CountriesResponse

        if (data.success && data.countries) {
          setCountries(data.countries)
        }
      } catch (requestError) {
        if (
          requestError instanceof Error &&
          requestError.name !== 'AbortError'
        ) {
          console.error(requestError)
        }
      }
    }

    void loadCountries()

    return () => controller.abort()
  }, [])

  useEffect(() => {
    const controller = new AbortController()

    async function loadFestivals() {
      setLoading(true)
      setError('')

      const parameters = new URLSearchParams({
        limit: String(PAGE_SIZE),
        offset: String(page * PAGE_SIZE),
      })

      if (search) {
        parameters.set('search', search)
      }

      if (country) {
        parameters.set('country', country)
      }

      if (priority) {
        parameters.set('priority', priority)
      }

      if (pipelineStatus) {
        parameters.set('status', pipelineStatus)
      }

      try {
        const response = await fetch(
          `/api/festivals?${parameters.toString()}`,
          {
            credentials: 'same-origin',
            signal: controller.signal,
          }
        )

        const data =
          (await response.json()) as FestivalsResponse

        if (
          !response.ok ||
          !data.success ||
          !data.festivals
        ) {
          throw new Error(
            data.error || 'Festival records could not be loaded'
          )
        }

        setFestivals(data.festivals)
        setTotal(data.total ?? 0)
      } catch (requestError) {
        if (
          requestError instanceof Error &&
          requestError.name !== 'AbortError'
        ) {
          setError('Festival kayıtları yüklenemedi.')
        }
      } finally {
        if (!controller.signal.aborted) {
          setLoading(false)
        }
      }
    }

    void loadFestivals()

    return () => controller.abort()
  }, [
    country,
    page,
    pipelineStatus,
    priority,
    search,
  ])

  function handleSearch(event: FormEvent<HTMLFormElement>) {
    event.preventDefault()
    setPage(0)
    setSearch(searchInput.trim())
  }

  function clearFilters() {
    setSearchInput('')
    setSearch('')
    setCountry('')
    setPriority('')
    setPipelineStatus('')
    setPage(0)
  }

  const firstRecord = total === 0
    ? 0
    : page * PAGE_SIZE + 1

  const lastRecord = Math.min(
    total,
    (page + 1) * PAGE_SIZE
  )

  const hasPreviousPage = page > 0
  const hasNextPage = lastRecord < total

  return (
    <div className="festivals-page">
      <section className="festivals-heading">
        <div>
          <p className="festivals-eyebrow">
            FESTİVAL PIPELINE
          </p>

          <h1>Festivaller</h1>

          <p>
            Araştırılan festivalleri, iletişim kanallarını
            ve başvuru önceliklerini takip edin.
          </p>
        </div>

        <div className="festivals-total">
          <strong>{total}</strong>
          <span>kayıt</span>
        </div>
      </section>

      <section className="festival-filters">
        <form
          className="festival-search"
          onSubmit={handleSearch}
        >
          <Search size={18} />

          <input
            type="search"
            value={searchInput}
            onChange={(event) =>
              setSearchInput(event.target.value)
            }
            placeholder="Festival, şehir, tür veya organizatör ara"
            aria-label="Festival ara"
          />

          <button type="submit">Ara</button>
        </form>

        <div className="festival-filter-selects">
          <select
            value={country}
            onChange={(event) => {
              setCountry(event.target.value)
              setPage(0)
            }}
            aria-label="Ülke filtresi"
          >
            <option value="">Tüm ülkeler</option>

            {countries.map((item) => (
              <option
                value={item.iso_code}
                key={item.id}
              >
                {item.name}
              </option>
            ))}
          </select>

          <select
            value={priority}
            onChange={(event) => {
              setPriority(event.target.value)
              setPage(0)
            }}
            aria-label="Öncelik filtresi"
          >
            <option value="">Tüm öncelikler</option>
            <option value="A">A öncelikli</option>
            <option value="B">B öncelikli</option>
            <option value="C">C öncelikli</option>
            <option value="D">D öncelikli</option>
          </select>

          <select
            value={pipelineStatus}
            onChange={(event) => {
              setPipelineStatus(event.target.value)
              setPage(0)
            }}
            aria-label="Araştırma durumu filtresi"
          >
            <option value="">Tüm durumlar</option>
            <option value="Verified">Verified</option>
            <option value="Monitor">Monitor</option>
          </select>

          <button
            className="clear-filters"
            type="button"
            onClick={clearFilters}
          >
            Filtreleri temizle
          </button>
        </div>
      </section>

      {loading && (
        <div className="festivals-message">
          Festival kayıtları yükleniyor…
        </div>
      )}

      {!loading && error && (
        <div className="festivals-message festivals-error">
          {error}
        </div>
      )}

      {!loading && !error && festivals.length === 0 && (
        <div className="festivals-message">
          Seçilen filtrelere uygun festival bulunamadı.
        </div>
      )}

      {!loading && !error && festivals.length > 0 && (
        <>
          <section className="festival-list">
            {festivals.map((festival) => (
              <article
                className="festival-card"
                key={festival.id}
              >
                <div className="festival-card-top">
                  <div className="festival-title">
                    <div className="festival-badges">
                      <span
                        className={`priority-badge priority-${festival.priority.toLowerCase()}`}
                      >
                        {festival.priority}
                      </span>

                      <span className="pipeline-badge">
                        {festival.pipeline_status}
                      </span>

                      {festival.is_stretch === 1 && (
                        <span className="stretch-badge">
                          Stretch
                        </span>
                      )}
                    </div>

                    <h2>{festival.name}</h2>

                    <div className="festival-location">
                      <MapPin size={15} />
                      <span>
                        {festival.city}, {festival.country}
                      </span>
                    </div>
                  </div>

                  <div className="festival-score">
                    <strong>{festival.total_score}</strong>
                    <span>puan</span>
                  </div>
                </div>

                <div className="festival-meta-grid">
                  <div>
                    <span>Ölçek</span>
                    <strong>{festival.scale}</strong>
                  </div>

                  <div>
                    <span>Güven</span>
                    <strong>{festival.confidence}</strong>
                  </div>

                  <div>
                    <span>2027 durumu</span>
                    <strong>{festival.status_2027}</strong>
                  </div>

                  <div>
                    <span>Tarih</span>
                    <strong>{festival.date_text}</strong>
                  </div>
                </div>

                <div className="festival-genres">
                  {festival.genres}
                </div>

                <div className="festival-application">
                  <span>Başvuru yöntemi</span>
                  <p>{festival.application_method}</p>
                </div>

                <div className="festival-next-action">
                  <span>Sonraki aksiyon</span>
                  <strong>{festival.next_action}</strong>
                </div>

                <div className="festival-card-footer">
                  <span className="festival-id">
                    {festival.external_id}
                  </span>

                  <div className="festival-links">
                    {festival.email && (
                      <a
                        href={`mailto:${festival.email}`}
                        title={festival.email}
                      >
                        <Mail size={16} />
                        E-posta
                      </a>
                    )}

                    {festival.website_url && (
                      <a
                        href={festival.website_url}
                        target="_blank"
                        rel="noreferrer"
                      >
                        <ExternalLink size={16} />
                        Website
                      </a>
                    )}

                    {festival.facebook_url && (
                      <a
                        href={festival.facebook_url}
                        target="_blank"
                        rel="noreferrer"
                      >
                        Facebook
                      </a>
                    )}

                    {festival.instagram_url && (
                      <a
                        href={festival.instagram_url}
                        target="_blank"
                        rel="noreferrer"
                      >
                        Instagram
                      </a>
                    )}
                  </div>
                </div>
              </article>
            ))}
          </section>

          <footer className="festival-pagination">
            <span>
              {firstRecord}–{lastRecord} / {total}
            </span>

            <div>
              <button
                type="button"
                disabled={!hasPreviousPage}
                onClick={() =>
                  setPage((current) => current - 1)
                }
              >
                <ChevronLeft size={17} />
                Önceki
              </button>

              <button
                type="button"
                disabled={!hasNextPage}
                onClick={() =>
                  setPage((current) => current + 1)
                }
              >
                Sonraki
                <ChevronRight size={17} />
              </button>
            </div>
          </footer>
        </>
      )}
    </div>
  )
}

export default FestivalsPage