import {
  useEffect,
  useState,
  type FormEvent,
} from 'react'
import {
  CalendarDays,
  Clock3,
  ChevronLeft,
  ChevronRight,
  Mail,
  Pencil,
  Save,
  Search,
  X,
} from 'lucide-react'
import './ApplicationsPage.css'

interface Country {
  id: number
  name: string
  iso_code: string
}

interface Application {
  id: number
  status: string
  priority: string
  assigned_to: string | null
  submitted_at: string | null
  follow_up_date: string | null
  response_date: string | null
  notes: string | null
  application_method: string | null
  next_action: string | null
  response_text: string | null
  updated_at: string
  festival_id: number
  external_id: string
  festival_name: string
  country: string
  country_code: string
  city: string
  edition_year: number
  event_status: string | null
  date_text: string | null
  application_window: string | null
  total_score: number | null
  confidence: string | null
  email: string | null
  phone: string | null
}

interface ApplicationsResponse {
  success: boolean
  total?: number
  applications?: Application[]
  error?: string
}

interface CountriesResponse {
  success: boolean
  countries?: Country[]
}

interface ApplicationAction {
  id: number
  application_id: number
  action_type: string
  performed_by: string | null
  details: Record<string, unknown> | string | null
  created_at: string
}

interface ApplicationActionsResponse {
  success: boolean
  actions?: ApplicationAction[]
  error?: string
}

interface EditForm {
  status: string
  priority: string
  assigned_to: string
  follow_up_date: string
  next_action: string
  response_text: string
  notes: string
}

const PAGE_SIZE = 25

const statusLabels: Record<string, string> = {
  not_started: 'Başlanmadı',
  preparing: 'Hazırlanıyor',
  contacted: 'İletişime geçildi',
  follow_up: 'Takip edilecek',
  negotiating: 'Görüşülüyor',
  accepted: 'Kabul edildi',
  declined: 'Reddedildi',
  closed: 'Kapandı',
}

const emptyForm: EditForm = {
  status: 'not_started',
  priority: 'D',
  assigned_to: '',
  follow_up_date: '',
  next_action: '',
  response_text: '',
  notes: '',
}

const historyFieldLabels: Record<string, string> = {
  status: 'Durum',
  priority: 'Öncelik',
  assigned_to: 'Sorumlu',
  follow_up_date: 'Takip tarihi',
  next_action: 'Sonraki aksiyon',
  response_text: 'Alınan yanıt',
  notes: 'İç notlar',
}

function formatHistoryValue(
  field: string,
  value: unknown
) {
  if (value === null || value === undefined || value === '') {
    return '—'
  }

  if (field === 'status' && typeof value === 'string') {
    return statusLabels[value] ?? value
  }

  if (typeof value === 'string') {
    return value
  }

  return JSON.stringify(value)
}

function describeChanges(
  details: ApplicationAction['details']
) {
  if (!details) {
    return []
  }

  if (typeof details === 'string') {
    return [details]
  }

  return Object.entries(details).map(([field, change]) => {
    const label = historyFieldLabels[field] ?? field

    if (
      change &&
      typeof change === 'object' &&
      !Array.isArray(change) &&
      ('from' in change || 'to' in change)
    ) {
      const transition = change as {
        from?: unknown
        to?: unknown
      }

      return `${label}: ${formatHistoryValue(
        field,
        transition.from
      )} → ${formatHistoryValue(field, transition.to)}`
    }

    return `${label}: ${formatHistoryValue(field, change)}`
  })
}

function formatHistoryDate(value: string) {
  const date = new Date(value.includes('T') ? value : `${value}Z`)

  if (Number.isNaN(date.getTime())) {
    return value
  }

  return new Intl.DateTimeFormat('tr-TR', {
    dateStyle: 'medium',
    timeStyle: 'short',
  }).format(date)
}

function ApplicationsPage() {
  const [countries, setCountries] = useState<Country[]>([])
  const [applications, setApplications] = useState<Application[]>([])
  const [total, setTotal] = useState(0)

  const [searchInput, setSearchInput] = useState('')
  const [search, setSearch] = useState('')
  const [country, setCountry] = useState('')
  const [priority, setPriority] = useState('')
  const [status, setStatus] = useState('')

  const [page, setPage] = useState(0)
  const [reloadKey, setReloadKey] = useState(0)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')

  const [editing, setEditing] = useState<Application | null>(null)
  const [editForm, setEditForm] = useState<EditForm>(emptyForm)
  const [saving, setSaving] = useState(false)
  const [saveError, setSaveError] = useState('')
  const [actionHistory, setActionHistory] = useState<
    ApplicationAction[]
  >([])
  const [historyLoading, setHistoryLoading] = useState(false)
  const [historyError, setHistoryError] = useState('')

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

    async function loadApplications() {
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

      if (status) {
        parameters.set('status', status)
      }

      try {
        const response = await fetch(
          `/api/applications?${parameters.toString()}`,
          {
            credentials: 'same-origin',
            signal: controller.signal,
          }
        )

        const data =
          (await response.json()) as ApplicationsResponse

        if (
          !response.ok ||
          !data.success ||
          !data.applications
        ) {
          throw new Error(
            data.error || 'Applications could not be loaded'
          )
        }

        setApplications(data.applications)
        setTotal(data.total ?? 0)
      } catch (requestError) {
        if (
          requestError instanceof Error &&
          requestError.name !== 'AbortError'
        ) {
          setError('Başvuru kayıtları yüklenemedi.')
        }
      } finally {
        if (!controller.signal.aborted) {
          setLoading(false)
        }
      }
    }

    void loadApplications()

    return () => controller.abort()
  }, [
    country,
    page,
    priority,
    reloadKey,
    search,
    status,
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
    setStatus('')
    setPage(0)
  }

  async function loadActionHistory(applicationId: number) {
    setHistoryLoading(true)
    setHistoryError('')
    setActionHistory([])

    try {
      const response = await fetch(
        `/api/applications/${applicationId}/actions`,
        {
          credentials: 'same-origin',
        }
      )

      const data =
        (await response.json()) as ApplicationActionsResponse

      if (!response.ok || !data.success || !data.actions) {
        throw new Error(
          data.error || 'İşlem geçmişi yüklenemedi.'
        )
      }

      setActionHistory(data.actions)
    } catch (requestError) {
      setHistoryError(
        requestError instanceof Error
          ? requestError.message
          : 'İşlem geçmişi yüklenemedi.'
      )
    } finally {
      setHistoryLoading(false)
    }
  }

  function openEditor(application: Application) {
    setEditing(application)
    setSaveError('')

    setEditForm({
      status: application.status,
      priority: application.priority,
      assigned_to: application.assigned_to ?? '',
      follow_up_date: application.follow_up_date ?? '',
      next_action: application.next_action ?? '',
      response_text: application.response_text ?? '',
      notes: application.notes ?? '',
    })

    void loadActionHistory(application.id)
  }

  function closeEditor() {
    if (saving) {
      return
    }

    setEditing(null)
    setSaveError('')
    setActionHistory([])
    setHistoryError('')
  }

  async function saveApplication(
    event: FormEvent<HTMLFormElement>
  ) {
    event.preventDefault()

    if (!editing) {
      return
    }

    setSaving(true)
    setSaveError('')

    try {
      const response = await fetch(
        `/api/applications/${editing.id}`,
        {
          method: 'PATCH',
          credentials: 'same-origin',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            status: editForm.status,
            priority: editForm.priority,
            assigned_to:
              editForm.assigned_to.trim() || null,
            follow_up_date:
              editForm.follow_up_date || null,
            next_action:
              editForm.next_action.trim() || null,
            response_text:
              editForm.response_text.trim() || null,
            notes: editForm.notes.trim() || null,
          }),
        }
      )

      const data = (await response.json()) as {
        success: boolean
        error?: string
      }

      if (!response.ok || !data.success) {
        throw new Error(
          data.error || 'Application could not be saved'
        )
      }

      setEditing(null)
      setReloadKey((current) => current + 1)
    } catch (requestError) {
      setSaveError(
        requestError instanceof Error
          ? requestError.message
          : 'Başvuru kaydedilemedi.'
      )
    } finally {
      setSaving(false)
    }
  }

  const firstRecord =
    total === 0 ? 0 : page * PAGE_SIZE + 1

  const lastRecord = Math.min(
    total,
    (page + 1) * PAGE_SIZE
  )

  const hasPreviousPage = page > 0
  const hasNextPage = lastRecord < total

  return (
    <div className="applications-page">
      <section className="applications-heading">
        <div>
          <p className="applications-eyebrow">
            BOOKING PIPELINE
          </p>

          <h1>Başvurular</h1>

          <p>
            Festival başvurularını, takip tarihlerini ve
            alınan yanıtları yönetin.
          </p>
        </div>

        <div className="applications-total">
          <strong>{total}</strong>
          <span>başvuru</span>
        </div>
      </section>

      <section className="application-filters">
        <form
          className="application-search"
          onSubmit={handleSearch}
        >
          <Search size={18} />

          <input
            type="search"
            value={searchInput}
            onChange={(event) =>
              setSearchInput(event.target.value)
            }
            placeholder="Festival, şehir veya sonraki aksiyon ara"
            aria-label="Başvuru ara"
          />

          <button type="submit">Ara</button>
        </form>

        <div className="application-filter-selects">
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
            value={status}
            onChange={(event) => {
              setStatus(event.target.value)
              setPage(0)
            }}
            aria-label="Başvuru durumu filtresi"
          >
            <option value="">Tüm durumlar</option>

            {Object.entries(statusLabels).map(
              ([value, label]) => (
                <option value={value} key={value}>
                  {label}
                </option>
              )
            )}
          </select>

          <button
            className="application-clear-filters"
            type="button"
            onClick={clearFilters}
          >
            Filtreleri temizle
          </button>
        </div>
      </section>

      {loading && (
        <div className="applications-message">
          Başvurular yükleniyor…
        </div>
      )}

      {!loading && error && (
        <div className="applications-message applications-error">
          {error}
        </div>
      )}

      {!loading && !error && applications.length === 0 && (
        <div className="applications-message">
          Seçilen filtrelere uygun başvuru bulunamadı.
        </div>
      )}

      {!loading && !error && applications.length > 0 && (
        <>
          <section className="application-list">
            {applications.map((application) => (
              <article
                className="application-card"
                key={application.id}
              >
                <div className="application-card-header">
                  <div>
                    <div className="application-badges">
                      <span
                        className={`application-priority priority-${application.priority.toLowerCase()}`}
                      >
                        {application.priority}
                      </span>

                      <span
                        className={`application-status status-${application.status}`}
                      >
                        {statusLabels[application.status] ??
                          application.status}
                      </span>
                    </div>

                    <h2>{application.festival_name}</h2>

                    <p>
                      {application.city}, {application.country}
                    </p>
                  </div>

                  <button
                    className="application-edit-button"
                    type="button"
                    onClick={() => openEditor(application)}
                  >
                    <Pencil size={16} />
                    Düzenle
                  </button>
                </div>

                <div className="application-info-grid">
                  <div>
                    <span>Puan</span>
                    <strong>
                      {application.total_score ?? '—'}
                    </strong>
                  </div>

                  <div>
                    <span>Etkinlik durumu</span>
                    <strong>
                      {application.event_status ?? '—'}
                    </strong>
                  </div>

                  <div>
                    <span>Takip tarihi</span>
                    <strong>
                      {application.follow_up_date ?? '—'}
                    </strong>
                  </div>

                  <div>
                    <span>Sorumlu</span>
                    <strong>
                      {application.assigned_to ?? '—'}
                    </strong>
                  </div>
                </div>

                <div className="application-action">
                  <span>Sonraki aksiyon</span>
                  <strong>
                    {application.next_action ??
                      'Aksiyon girilmedi'}
                  </strong>
                </div>

                <div className="application-card-footer">
                  <span>{application.external_id}</span>

                  {application.email && (
                    <a
                      href={`mailto:${application.email}`}
                      title={application.email}
                    >
                      <Mail size={16} />
                      {application.email}
                    </a>
                  )}
                </div>
              </article>
            ))}
          </section>

          <footer className="application-pagination">
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

      {editing && (
        <div className="application-modal-backdrop">
          <section
            className="application-modal"
            role="dialog"
            aria-modal="true"
            aria-labelledby="application-modal-title"
          >
            <header>
              <div>
                <span>Başvuruyu düzenle</span>
                <h2 id="application-modal-title">
                  {editing.festival_name}
                </h2>
              </div>

              <button
                type="button"
                onClick={closeEditor}
                aria-label="Pencereyi kapat"
              >
                <X size={20} />
              </button>
            </header>

            <form onSubmit={saveApplication}>
              <div className="application-form-grid">
                <label>
                  Başvuru durumu

                  <select
                    value={editForm.status}
                    onChange={(event) =>
                      setEditForm((current) => ({
                        ...current,
                        status: event.target.value,
                      }))
                    }
                  >
                    {Object.entries(statusLabels).map(
                      ([value, label]) => (
                        <option value={value} key={value}>
                          {label}
                        </option>
                      )
                    )}
                  </select>
                </label>

                <label>
                  Öncelik

                  <select
                    value={editForm.priority}
                    onChange={(event) =>
                      setEditForm((current) => ({
                        ...current,
                        priority: event.target.value,
                      }))
                    }
                  >
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="C">C</option>
                    <option value="D">D</option>
                  </select>
                </label>

                <label>
                  Sorumlu

                  <input
                    type="text"
                    value={editForm.assigned_to}
                    onChange={(event) =>
                      setEditForm((current) => ({
                        ...current,
                        assigned_to: event.target.value,
                      }))
                    }
                    maxLength={100}
                    placeholder="Grup üyesi veya yönetici"
                  />
                </label>

                <label>
                  Takip tarihi

                  <div className="date-input">
                    <CalendarDays size={17} />

                    <input
                      type="date"
                      value={editForm.follow_up_date}
                      onChange={(event) =>
                        setEditForm((current) => ({
                          ...current,
                          follow_up_date:
                            event.target.value,
                        }))
                      }
                    />
                  </div>
                </label>
              </div>

              <label>
                Sonraki aksiyon

                <textarea
                  value={editForm.next_action}
                  onChange={(event) =>
                    setEditForm((current) => ({
                      ...current,
                      next_action: event.target.value,
                    }))
                  }
                  rows={3}
                  maxLength={1000}
                />
              </label>

              <label>
                Alınan yanıt

                <textarea
                  value={editForm.response_text}
                  onChange={(event) =>
                    setEditForm((current) => ({
                      ...current,
                      response_text: event.target.value,
                    }))
                  }
                  rows={3}
                  maxLength={2000}
                />
              </label>

              <label>
                İç notlar

                <textarea
                  value={editForm.notes}
                  onChange={(event) =>
                    setEditForm((current) => ({
                      ...current,
                      notes: event.target.value,
                    }))
                  }
                  rows={4}
                  maxLength={5000}
                />
              </label>

              <section className="application-history">
                <div className="application-history-heading">
                  <div>
                    <span>İşlem geçmişi</span>
                    <h3>Değişiklik zaman çizelgesi</h3>
                  </div>

                  <Clock3 size={20} />
                </div>

                {historyLoading && (
                  <div className="application-history-message">
                    Geçmiş yükleniyor…
                  </div>
                )}

                {!historyLoading && historyError && (
                  <div className="application-history-message application-history-error">
                    {historyError}
                  </div>
                )}

                {!historyLoading &&
                  !historyError &&
                  actionHistory.length === 0 && (
                    <div className="application-history-message">
                      Bu başvuru için henüz kayıtlı işlem yok.
                    </div>
                  )}

                {!historyLoading &&
                  !historyError &&
                  actionHistory.length > 0 && (
                    <div className="application-timeline">
                      {actionHistory.map((action) => {
                        const changes = describeChanges(
                          action.details
                        )

                        return (
                          <article
                            className="application-timeline-item"
                            key={action.id}
                          >
                            <div className="application-timeline-dot" />

                            <div className="application-timeline-content">
                              <strong>Başvuru güncellendi</strong>

                              <div className="application-timeline-meta">
                                <span>
                                  {action.performed_by ??
                                    'Sistem'}
                                </span>
                                <time dateTime={action.created_at}>
                                  {formatHistoryDate(
                                    action.created_at
                                  )}
                                </time>
                              </div>

                              {changes.length > 0 && (
                                <ul>
                                  {changes.map((change, index) => (
                                    <li key={`${action.id}-${index}`}>
                                      {change}
                                    </li>
                                  ))}
                                </ul>
                              )}
                            </div>
                          </article>
                        )
                      })}
                    </div>
                  )}
              </section>

              {saveError && (
                <div className="application-save-error">
                  {saveError}
                </div>
              )}

              <footer>
                <button
                  className="modal-cancel-button"
                  type="button"
                  onClick={closeEditor}
                  disabled={saving}
                >
                  Vazgeç
                </button>

                <button
                  className="modal-save-button"
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

export default ApplicationsPage
