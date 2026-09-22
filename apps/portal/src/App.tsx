import {
  useEffect,
  useState,
} from 'react'
import {
  Bell,
  CalendarDays,
  ChevronRight,
  ClipboardList,
  Globe2,
  LayoutDashboard,
  LogOut,
  Radar,
  Search,
  Send,
  Users,
} from 'lucide-react'
import {
  BrowserRouter,
  NavLink,
  Route,
  Routes,
  useNavigate,
} from 'react-router-dom'
import AuthGate from './auth/AuthGate'
import CountriesPage from './pages/CountriesPage'
import './App.css'
import FestivalsPage from './pages/FestivalsPage'
import ApplicationsPage from './pages/ApplicationsPage'

const navigation = [
  { name: 'Dashboard', path: '/', icon: LayoutDashboard },
  { name: 'Ülkeler', path: '/countries', icon: Globe2 },
  { name: 'Festivaller', path: '/festivals', icon: CalendarDays },
  { name: 'Başvurular', path: '/applications', icon: Send },
  { name: 'Keşif Merkezi', path: '/discoveries', icon: Radar },
  { name: 'Organizatörler', path: '/organizers', icon: Users },
]

type MetricCardProps = {
  label: string
  value: string
  description: string
  tone: 'blue' | 'green' | 'orange' | 'purple'
}

type DashboardMetrics = {
  festivals: number
  countries: number
  urgent_applications: number
  completed_applications: number
  active_applications: number
}

type DashboardResponse = {
  success: boolean
  metrics?: DashboardMetrics
  upcoming_actions?: UpcomingAction[]
  error?: string
}

type UpcomingAction = {
  application_id: number
  festival_name: string
  city: string
  country: string
  status: string
  priority: string
  follow_up_date: string
  next_action: string
}

type ActionUrgency = {
  className: string
  label: string
}

function formatActionDate(value: string) {
  const date = new Date(`${value}T00:00:00`)

  if (Number.isNaN(date.getTime())) {
    return {
      day: '—',
      month: '—',
    }
  }

  return {
    day: String(date.getDate()).padStart(2, '0'),
    month: new Intl.DateTimeFormat('tr-TR', {
      month: 'short',
    })
      .format(date)
      .replace('.', '')
      .toLocaleUpperCase('tr-TR'),
  }
}

function getActionUrgency(value: string): ActionUrgency {
  const actionDate = new Date(`${value}T23:59:59`)
  const now = new Date()

  if (actionDate.getTime() < now.getTime()) {
    return {
      className: 'status-urgent',
      label: 'Gecikti',
    }
  }

  const fourteenDaysLater = new Date()
  fourteenDaysLater.setDate(fourteenDaysLater.getDate() + 14)

  if (actionDate.getTime() <= fourteenDaysLater.getTime()) {
    return {
      className: 'status-urgent',
      label: 'Acil',
    }
  }

  return {
    className: 'status-planned',
    label: 'Planlandı',
  }
}

function MetricCard({
  label,
  value,
  description,
  tone,
}: MetricCardProps) {
  return (
    <article className={`metric-card metric-${tone}`}>
      <span className="metric-label">{label}</span>
      <strong>{value}</strong>
      <span className="metric-description">{description}</span>
    </article>
  )
}

function Dashboard() {
  const [metrics, setMetrics] =
    useState<DashboardMetrics | null>(null)
  const [upcomingActions, setUpcomingActions] = useState<
    UpcomingAction[]
  >([])
  const [metricsError, setMetricsError] = useState('')
  const navigate = useNavigate()

  useEffect(() => {
    const controller = new AbortController()

    async function loadDashboardMetrics() {
      setMetricsError('')

      try {
        const response = await fetch('/api/dashboard', {
          credentials: 'same-origin',
          signal: controller.signal,
        })

        const data =
          (await response.json()) as DashboardResponse

        if (!response.ok || !data.success || !data.metrics) {
          throw new Error(
            data.error || 'Dashboard verileri yüklenemedi.'
          )
        }

        setMetrics(data.metrics)
        setUpcomingActions(data.upcoming_actions ?? [])
      } catch (requestError) {
        if (
          requestError instanceof Error &&
          requestError.name !== 'AbortError'
        ) {
          setMetricsError('Dashboard verileri yüklenemedi.')
        }
      }
    }

    void loadDashboardMetrics()

    return () => controller.abort()
  }, [])

  return (
    <>
      <section className="page-heading">
        <div>
          <p className="eyebrow">GENEL BAKIŞ</p>
          <h1>Festival Booking Dashboard</h1>
          <p>
            Festival keşiflerini, başvuruları ve takip işlemlerini tek
            merkezden yönetin.
          </p>
        </div>

        <button
          className="primary-button"
          type="button"
          onClick={() => navigate('/festivals?new=1')}
        >
          <CalendarDays size={18} />
          Festival ekle
        </button>
      </section>

      <section className="metrics-grid">
        <MetricCard
          label="Festival kayıtları"
          value={metrics ? String(metrics.festivals) : '—'}
          description={
            metrics
              ? `${metrics.active_applications} aktif başvuru süreci`
              : 'Veriler yükleniyor'
          }
          tone="blue"
        />

        <MetricCard
          label="Takip edilen ülke"
          value={metrics ? String(metrics.countries) : '—'}
          description="Aktif araştırma pazarı"
          tone="green"
        />

        <MetricCard
          label="Acil takip"
          value={
            metrics
              ? String(metrics.urgent_applications)
              : '—'
          }
          description="14 gün içinde veya gecikmiş"
          tone="orange"
        />

        <MetricCard
          label="Tamamlanan başvuru"
          value={
            metrics
              ? String(metrics.completed_applications)
              : '—'
          }
          description="Kabul, ret veya kapanan kayıt"
          tone="purple"
        />
      </section>

      {metricsError && (
        <div className="empty-state" role="alert">
          <strong>{metricsError}</strong>
          <span>Sayfayı yenileyerek tekrar deneyin.</span>
        </div>
      )}

      <section className="dashboard-grid">
        <article className="panel">
          <div className="panel-header">
            <div>
              <h2>Yaklaşan aksiyonlar</h2>
              <p>Öncelikli başvuru ve takip görevleri</p>
            </div>

            <button
              className="text-button"
              type="button"
              onClick={() => navigate('/applications')}
            >
              Tümünü gör
              <ChevronRight size={16} />
            </button>
          </div>

          <div className="action-list">
            {!metrics && !metricsError && (
              <div className="action-row">
                <div className="action-content">
                  <strong>Aksiyonlar yükleniyor…</strong>
                  <span>Takip takvimi hazırlanıyor.</span>
                </div>
              </div>
            )}

            {metrics && upcomingActions.length === 0 && (
              <div className="action-row">
                <div className="action-content">
                  <strong>Planlanmış takip bulunmuyor</strong>
                  <span>
                    Başvurular sayfasından takip tarihi ve
                    sonraki aksiyon ekleyebilirsiniz.
                  </span>
                </div>
              </div>
            )}

            {upcomingActions.map((action) => {
              const date = formatActionDate(
                action.follow_up_date
              )
              const urgency = getActionUrgency(
                action.follow_up_date
              )

              return (
                <div
                  className="action-row"
                  key={action.application_id}
                >
                  <div
                    className={`action-date ${
                      urgency.className === 'status-urgent'
                        ? 'urgent'
                        : ''
                    }`}
                  >
                    <strong>{date.day}</strong>
                    <span>{date.month}</span>
                  </div>

                  <div className="action-content">
                    <strong>{action.festival_name}</strong>
                    <span>
                      {action.next_action} · {action.city},{' '}
                      {action.country}
                    </span>
                  </div>

                  <span
                    className={`status ${urgency.className}`}
                  >
                    {urgency.label}
                  </span>
                </div>
              )
            })}
          </div>
        </article>

        <article className="panel">
          <div className="panel-header">
            <div>
              <h2>Keşif merkezi</h2>
              <p>Yeni butik festival kaynakları</p>
            </div>
          </div>

          <div className="discovery-options">
            <button type="button" className="discovery-card">
              <div className="discovery-icon">
                <Search size={21} />
              </div>

              <div>
                <strong>Grup geçmişinden ara</strong>
                <span>Bir grubun çaldığı festivalleri keşfet</span>
              </div>

              <ChevronRight size={18} />
            </button>

            <button type="button" className="discovery-card">
              <div className="discovery-icon">
                <Radar size={21} />
              </div>

              <div>
                <strong>Hashtag taraması</strong>
                <span>
                  Sosyal medyadan yeni etkinlik adayları bul
                </span>
              </div>

              <ChevronRight size={18} />
            </button>

            <button type="button" className="discovery-card">
              <div className="discovery-icon">
                <ClipboardList size={21} />
              </div>

              <div>
                <strong>İncelenecek adaylar</strong>
                <span>
                  Doğrulama bekleyen keşifleri görüntüle
                </span>
              </div>

              <ChevronRight size={18} />
            </button>
          </div>
        </article>
      </section>
    </>
  )
}

type PlaceholderPageProps = {
  title: string
  description: string
}

function PlaceholderPage({
  title,
  description,
}: PlaceholderPageProps) {
  return (
    <section className="placeholder-page">
      <p className="eyebrow">MODÜL</p>
      <h1>{title}</h1>
      <p>{description}</p>

      <div className="empty-state">
        <ClipboardList size={34} />

        <strong>
          Bu bölüm sonraki aşamalarda hazırlanacak.
        </strong>

        <span>
          Temel portal navigasyonu başarıyla çalışıyor.
        </span>
      </div>
    </section>
  )
}

function PortalLayout() {
  async function handleLogout() {
    try {
      await fetch('/api/auth/logout', {
        method: 'POST',
        credentials: 'same-origin',
      })
    } finally {
      window.location.reload()
    }
  }

  return (
    <div className="app-shell">
      <aside className="sidebar">
        <div className="brand">
          <div className="brand-mark">SNS</div>

          <div className="brand-text">
            <strong>Saints ’N’ Sinners</strong>
            <span>Booking Portal</span>
          </div>
        </div>

        <nav className="main-navigation">
          {navigation.map((item) => {
            const Icon = item.icon

            return (
              <NavLink
                key={item.path}
                to={item.path}
                end={item.path === '/'}
                className={({ isActive }) =>
                  isActive ? 'nav-link active' : 'nav-link'
                }
              >
                <Icon size={19} />
                <span>{item.name}</span>
              </NavLink>
            )
          })}
        </nav>

        <div className="sidebar-footer">
          <div className="user-avatar">OO</div>

          <div className="user-info">
            <strong>Portal yöneticisi</strong>
            <span>Administrator</span>
          </div>

          <button
            className="logout-button"
            type="button"
            onClick={() => void handleLogout()}
            aria-label="Çıkış yap"
            title="Çıkış yap"
          >
            <LogOut size={17} />
          </button>
        </div>
      </aside>

      <main className="main-area">
        <header className="topbar">
          <div className="search-box">
            <Search size={18} />

            <input
              type="search"
              placeholder="Festival, ülke veya organizatör ara..."
              aria-label="Portalda ara"
            />
          </div>

          <button
            className="notification-button"
            type="button"
            aria-label="Bildirimler"
          >
            <Bell size={20} />
            <span />
          </button>
        </header>

        <div className="page-content">
          <Routes>
            <Route path="/" element={<Dashboard />} />

            <Route
              path="/countries"
              element={<CountriesPage />}
            />

            <Route path="/festivals" element={<FestivalsPage />} />

            <Route
              path="/applications"
              element={<ApplicationsPage />}
            />

            <Route
              path="/discoveries"
              element={
                <PlaceholderPage
                  title="Keşif Merkezi"
                  description="Hashtag ve grup geçmişi taramalarından yeni festivaller bulun."
                />
              }
            />

            <Route
              path="/organizers"
              element={
                <PlaceholderPage
                  title="Organizatörler"
                  description="Dernek, belediye, motor kulübü ve promoter kayıtlarını yönetin."
                />
              }
            />
          </Routes>
        </div>
      </main>
    </div>
  )
}

function App() {
  return (
    <BrowserRouter>
      <AuthGate>
        <PortalLayout />
      </AuthGate>
    </BrowserRouter>
  )
}

export default App
