import {
  useEffect,
  useRef,
  useState,
  type FormEvent,
} from 'react'
import {
  ChevronLeft,
  ChevronRight,
  ExternalLink,
  Mail,
  MapPin,
  Pencil,
  Plus,
  Save,
  Search,
  X,
} from 'lucide-react'
import { useLocation, useNavigate } from 'react-router-dom'
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

interface FestivalDetail {
  id: number
  country_id: number
  name: string
  city: string | null
  genres: string | null
  scale: string | null
  scale_category: string | null
  event_type: string | null
  priority: string | null
  is_stretch: number | null
  total_score: number | null
  confidence: string | null
  pipeline_status: string | null
  edition_year: number | null
  status_text: string | null
  date_text: string | null
  application_window: string | null
  application_method: string | null
  next_action: string | null
  email: string | null
  phone: string | null
  website_url: string | null
  instagram_url: string | null
  facebook_url: string | null
  source_url: string | null
  notes: string | null
}

interface FestivalDetailResponse {
  success: boolean
  festival?: FestivalDetail
  error?: string
}

interface FestivalForm {
  name: string
  country_id: string
  city: string
  genres: string
  scale: string
  scale_category: string
  event_type: string
  priority: string
  is_stretch: boolean
  total_score: string
  confidence: string
  pipeline_status: string
  edition_year: string
  status_text: string
  date_text: string
  application_window: string
  application_method: string
  next_action: string
  email: string
  phone: string
  website_url: string
  instagram_url: string
  facebook_url: string
  source_url: string
  notes: string
}

const PAGE_SIZE = 25

const emptyFestivalForm: FestivalForm = {
  name: '',
  country_id: '',
  city: '',
  genres: '',
  scale: '',
  scale_category: 'small-medium',
  event_type: 'festival',
  priority: 'C',
  is_stretch: false,
  total_score: '0',
  confidence: 'Medium',
  pipeline_status: 'Monitor',
  edition_year: '2027',
  status_text: 'Monitor',
  date_text: 'TBA',
  application_window: '',
  application_method: '',
  next_action: '',
  email: '',
  phone: '',
  website_url: '',
  instagram_url: '',
  facebook_url: '',
  source_url: '',
  notes: '',
}

function FestivalsPage() {
  const location = useLocation()
  const navigate = useNavigate()
  const [countries, setCountries] = useState<Country[]>([])
  const [festivals, setFestivals] = useState<Festival[]>([])
  const [total, setTotal] = useState(0)

  const [searchInput, setSearchInput] = useState('')
  const [search, setSearch] = useState('')
  const [country, setCountry] = useState('')
  const [priority, setPriority] = useState('')
  const [pipelineStatus, setPipelineStatus] = useState('')

  const [page, setPage] = useState(0)
  const [reloadKey, setReloadKey] = useState(0)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [createOpen, setCreateOpen] = useState(false)
  const [editingId, setEditingId] = useState<number | null>(null)
  const [editorLoading, setEditorLoading] = useState(false)
  const [editorError, setEditorError] = useState('')
  const editController = useRef<AbortController | null>(null)
  const [festivalForm, setFestivalForm] =
    useState<FestivalForm>(emptyFestivalForm)
  const [saving, setSaving] = useState(false)
  const [saveError, setSaveError] = useState('')

  useEffect(() => {
    const params = new URLSearchParams(location.search)

    if (params.get('new') !== '1') {
      return
    }

    editController.current?.abort()
    setEditingId(null)
    setEditorLoading(false)
    setEditorError('')
    setFestivalForm(emptyFestivalForm)
    setSaveError('')
    setCreateOpen(true)
    navigate('/festivals', { replace: true })
  }, [location.search, navigate])

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
    reloadKey,
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

  function openCreateModal() {
    editController.current?.abort()
    setEditingId(null)
    setEditorLoading(false)
    setEditorError('')
    setFestivalForm(emptyFestivalForm)
    setSaveError('')
    setCreateOpen(true)
  }

  async function openEditModal(id: number) {
    editController.current?.abort()
    const controller = new AbortController()
    editController.current = controller
    setEditingId(id)
    setCreateOpen(true)
    setEditorLoading(true)
    setEditorError('')
    setSaveError('')
    setFestivalForm(emptyFestivalForm)

    try {
      const response = await fetch(`/api/festivals/${id}`, {
        credentials: 'same-origin',
        signal: controller.signal,
      })
      const data =
        (await response.json()) as FestivalDetailResponse

      if (!response.ok || !data.success || !data.festival) {
        throw new Error(
          data.error || 'Festival bilgileri yüklenemedi.'
        )
      }

      if (controller.signal.aborted) return
      const festival = data.festival
      setFestivalForm({
        name: festival.name,
        country_id: String(festival.country_id),
        city: festival.city ?? '',
        genres: festival.genres ?? '',
        scale: festival.scale ?? '',
        scale_category:
          festival.scale_category ?? 'small-medium',
        event_type: festival.event_type ?? 'festival',
        priority: festival.priority ?? 'C',
        is_stretch: festival.is_stretch === 1,
        total_score: String(festival.total_score ?? 0),
        confidence: festival.confidence ?? 'Medium',
        pipeline_status: festival.pipeline_status ?? 'Monitor',
        edition_year: String(festival.edition_year ?? 2027),
        status_text: festival.status_text ?? '',
        date_text: festival.date_text ?? '',
        application_window: festival.application_window ?? '',
        application_method: festival.application_method ?? '',
        next_action: festival.next_action ?? '',
        email: festival.email ?? '',
        phone: festival.phone ?? '',
        website_url: festival.website_url ?? '',
        instagram_url: festival.instagram_url ?? '',
        facebook_url: festival.facebook_url ?? '',
        source_url: festival.source_url ?? '',
        notes: festival.notes ?? '',
      })
    } catch (requestError) {
      if (!controller.signal.aborted) {
        setEditorError(
          requestError instanceof Error
            ? requestError.message
            : 'Festival bilgileri yüklenemedi.'
        )
      }
    } finally {
      if (!controller.signal.aborted) setEditorLoading(false)
    }
  }

  function closeCreateModal() {
    if (saving) {
      return
    }

    editController.current?.abort()
    setCreateOpen(false)
    setEditingId(null)
    setEditorError('')
    setSaveError('')
  }

  function updateFestivalForm(
    field: keyof FestivalForm,
    value: string | boolean
  ) {
    setFestivalForm((current) => ({
      ...current,
      [field]: value,
    }))
  }

  async function saveFestival(
    event: FormEvent<HTMLFormElement>
  ) {
    event.preventDefault()
    setSaving(true)
    setSaveError('')

    try {
      const response = await fetch(
        editingId === null
          ? '/api/festivals'
          : `/api/festivals/${editingId}`,
        {
          method: editingId === null ? 'POST' : 'PATCH',
          credentials: 'same-origin',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            ...festivalForm,
            country_id: Number(festivalForm.country_id),
            total_score: Number(festivalForm.total_score),
            edition_year: Number(festivalForm.edition_year),
          }),
        }
      )

      const data =
        (await response.json()) as FestivalsResponse

      if (!response.ok || !data.success) {
        throw new Error(
          data.error || 'Festival kaydedilemedi.'
        )
      }

      setCreateOpen(false)
      setEditingId(null)
      setSearchInput('')
      setSearch('')
      setCountry('')
      setPriority('')
      setPipelineStatus('')
      setPage(0)
      setReloadKey((value) => value + 1)
    } catch (requestError) {
      setSaveError(
        requestError instanceof Error
          ? requestError.message
          : 'Festival kaydedilemedi.'
      )
    } finally {
      setSaving(false)
    }
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

        <div className="festivals-heading-actions">
          <div className="festivals-total">
            <strong>{total}</strong>
            <span>kayıt</span>
          </div>

          <button
            className="festival-add-button"
            type="button"
            onClick={openCreateModal}
          >
            <Plus size={17} />
            Festival ekle
          </button>
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

                    <button
                      className="festival-edit-button"
                      type="button"
                      onClick={() => void openEditModal(festival.id)}
                    >
                      <Pencil size={14} />
                      Düzenle
                    </button>

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

      {createOpen && (
        <div className="festival-modal-backdrop">
          <section
            className="festival-modal"
            role="dialog"
            aria-modal="true"
            aria-labelledby="festival-modal-title"
          >
            <header>
              <div>
                <span>
                  {editingId === null
                    ? 'Yeni festival'
                    : 'Festival düzenle'}
                </span>
                <h2 id="festival-modal-title">
                  {editingId === null
                    ? 'Festival kaydı oluştur'
                    : festivals.find((item) => item.id === editingId)
                        ?.name ?? 'Festival yükleniyor…'}
                </h2>
              </div>

              <button
                type="button"
                onClick={closeCreateModal}
                aria-label="Pencereyi kapat"
              >
                <X size={20} />
              </button>
            </header>

            {editorLoading && (
              <div className="festivals-message">
                Festival bilgileri yükleniyor…
              </div>
            )}

            {editorError && (
              <div className="festivals-message festivals-error" role="alert">
                {editorError}
              </div>
            )}

            {!editorLoading && !editorError && (
              <form onSubmit={saveFestival}>
                <fieldset>
                  <legend>Temel bilgiler</legend>

                  <div className="festival-form-grid">
                    <label className="festival-form-wide">
                      Festival adı
                      <input
                        type="text"
                        value={festivalForm.name}
                        onChange={(event) =>
                          updateFestivalForm(
                            'name',
                            event.target.value
                          )
                        }
                        minLength={2}
                        maxLength={150}
                        required
                        autoFocus
                      />
                    </label>

                    <label>
                      Ülke
                      <select
                        value={festivalForm.country_id}
                        onChange={(event) =>
                          updateFestivalForm(
                            'country_id',
                            event.target.value
                          )
                        }
                        required
                      >
                        <option value="">Ülke seçin</option>
                        {countries.map((item) => (
                          <option value={item.id} key={item.id}>
                            {item.name}
                          </option>
                        ))}
                      </select>
                    </label>

                    <label>
                      Şehir
                      <input
                        type="text"
                        value={festivalForm.city}
                        onChange={(event) =>
                          updateFestivalForm(
                            'city',
                            event.target.value
                          )
                        }
                        maxLength={100}
                      />
                    </label>

                    <label className="festival-form-wide">
                      Müzik türleri
                      <input
                        type="text"
                        value={festivalForm.genres}
                        onChange={(event) =>
                          updateFestivalForm(
                            'genres',
                            event.target.value
                          )
                        }
                        placeholder="heavy metal, hard rock, power metal"
                        maxLength={500}
                      />
                    </label>

                    <label>
                      Ölçek açıklaması
                      <input
                        type="text"
                        value={festivalForm.scale}
                        onChange={(event) =>
                          updateFestivalForm(
                            'scale',
                            event.target.value
                          )
                        }
                        placeholder="Small / 500–1000"
                      />
                    </label>

                    <label>
                      Ölçek kategorisi
                      <select
                        value={festivalForm.scale_category}
                        onChange={(event) =>
                          updateFestivalForm(
                            'scale_category',
                            event.target.value
                          )
                        }
                      >
                        <option value="small">Small</option>
                        <option value="small-medium">
                          Small-medium
                        </option>
                        <option value="medium">Medium</option>
                        <option value="large">Large</option>
                      </select>
                    </label>
                  </div>
                </fieldset>

                <fieldset>
                  <legend>Araştırma ve öncelik</legend>

                  <div className="festival-form-grid">
                    <label>
                      Öncelik
                      <select
                        value={festivalForm.priority}
                        onChange={(event) =>
                          updateFestivalForm(
                            'priority',
                            event.target.value
                          )
                        }
                      >
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                        <option value="D">D</option>
                      </select>
                    </label>

                    <label>
                      Pipeline durumu
                      <select
                        value={festivalForm.pipeline_status}
                        onChange={(event) =>
                          updateFestivalForm(
                            'pipeline_status',
                            event.target.value
                          )
                        }
                      >
                        <option value="Monitor">Monitor</option>
                        <option value="Verified">Verified</option>
                      </select>
                    </label>

                    <label>
                      Güven seviyesi
                      <select
                        value={festivalForm.confidence}
                        onChange={(event) =>
                          updateFestivalForm(
                            'confidence',
                            event.target.value
                          )
                        }
                      >
                        <option value="High">High</option>
                        <option value="Medium">Medium</option>
                        <option value="Low">Low</option>
                      </select>
                    </label>

                    <label>
                      Toplam puan
                      <input
                        type="number"
                        min="0"
                        max="100"
                        step="1"
                        value={festivalForm.total_score}
                        onChange={(event) =>
                          updateFestivalForm(
                            'total_score',
                            event.target.value
                          )
                        }
                      />
                    </label>

                    <label className="festival-checkbox-label">
                      <input
                        type="checkbox"
                        checked={festivalForm.is_stretch}
                        onChange={(event) =>
                          updateFestivalForm(
                            'is_stretch',
                            event.target.checked
                          )
                        }
                      />
                      Stretch hedefi
                    </label>
                  </div>
                </fieldset>

                <fieldset>
                  <legend>Edisyon ve başvuru</legend>

                  <div className="festival-form-grid">
                    <label>
                      Edisyon yılı
                      <input
                        type="number"
                        min="2026"
                        max="2100"
                        value={festivalForm.edition_year}
                        disabled={editingId !== null}
                        onChange={(event) =>
                          updateFestivalForm(
                            'edition_year',
                            event.target.value
                          )
                        }
                        required
                      />
                      {editingId !== null && (
                        <small>
                          Edisyon yılı bu görünümde değiştirilemez.
                        </small>
                      )}
                    </label>

                    <label>
                      Edisyon durumu
                      <input
                        type="text"
                        value={festivalForm.status_text}
                        onChange={(event) =>
                          updateFestivalForm(
                            'status_text',
                            event.target.value
                          )
                        }
                        placeholder="Confirmed / Monitor"
                      />
                    </label>

                    <label className="festival-form-wide">
                      Tarih bilgisi
                      <input
                        type="text"
                        value={festivalForm.date_text}
                        onChange={(event) =>
                          updateFestivalForm(
                            'date_text',
                            event.target.value
                          )
                        }
                        placeholder="12–13 June 2027"
                      />
                    </label>

                    <label className="festival-form-wide">
                      Başvuru penceresi
                      <input
                        type="text"
                        value={festivalForm.application_window}
                        onChange={(event) =>
                          updateFestivalForm(
                            'application_window',
                            event.target.value
                          )
                        }
                      />
                    </label>

                    <label className="festival-form-wide">
                      Başvuru yöntemi
                      <textarea
                        value={festivalForm.application_method}
                        onChange={(event) =>
                          updateFestivalForm(
                            'application_method',
                            event.target.value
                          )
                        }
                        rows={3}
                      />
                    </label>

                    <label className="festival-form-wide">
                      Sonraki aksiyon
                      <textarea
                        value={festivalForm.next_action}
                        onChange={(event) =>
                          updateFestivalForm(
                            'next_action',
                            event.target.value
                          )
                        }
                        rows={3}
                      />
                    </label>
                  </div>
                </fieldset>

                <fieldset>
                  <legend>İletişim ve kaynaklar</legend>

                  <div className="festival-form-grid">
                    <label>
                      E-posta
                      <input
                        type="email"
                        value={festivalForm.email}
                        onChange={(event) =>
                          updateFestivalForm(
                            'email',
                            event.target.value
                          )
                        }
                      />
                    </label>

                    <label>
                      Telefon
                      <input
                        type="text"
                        value={festivalForm.phone}
                        onChange={(event) =>
                          updateFestivalForm(
                            'phone',
                            event.target.value
                          )
                        }
                      />
                    </label>

                    {(
                      [
                        ['website_url', 'Website'],
                        ['instagram_url', 'Instagram'],
                        ['facebook_url', 'Facebook'],
                        ['source_url', 'Kaynak URL'],
                      ] as const
                    ).map(([field, label]) => (
                      <label key={field}>
                        {label}
                        <input
                          type="url"
                          value={festivalForm[field]}
                          onChange={(event) =>
                            updateFestivalForm(
                              field,
                              event.target.value
                            )
                          }
                          placeholder="https://"
                        />
                      </label>
                    ))}

                    <label className="festival-form-wide">
                      Notlar
                      <textarea
                        value={festivalForm.notes}
                        onChange={(event) =>
                          updateFestivalForm(
                            'notes',
                            event.target.value
                          )
                        }
                        rows={3}
                      />
                    </label>
                  </div>
                </fieldset>

                {saveError && (
                  <div className="festival-save-error">
                    {saveError}
                  </div>
                )}

                <footer>
                  <button
                    className="festival-modal-cancel"
                    type="button"
                    onClick={closeCreateModal}
                    disabled={saving}
                  >
                    Vazgeç
                  </button>

                  <button
                    className="festival-modal-save"
                    type="submit"
                    disabled={saving}
                  >
                    <Save size={17} />
                    {saving
                      ? 'Kaydediliyor…'
                      : editingId === null
                        ? 'Festivali ekle'
                        : 'Değişiklikleri kaydet'}
                  </button>
                </footer>
              </form>
            )}
          </section>
        </div>
      )}
    </div>
  )
}

export default FestivalsPage
