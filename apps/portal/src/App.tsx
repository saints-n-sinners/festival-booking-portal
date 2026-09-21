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
} from 'react-router-dom'
import AuthGate from './auth/AuthGate'
import CountriesPage from './pages/CountriesPage'
import './App.css'

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

        <button className="primary-button" type="button">
          <CalendarDays size={18} />
          Festival ekle
        </button>
      </section>

      <section className="metrics-grid">
        <MetricCard
          label="Excel kayıtları"
          value="165"
          description="Veritabanına aktarılacak"
          tone="blue"
        />

        <MetricCard
          label="Takip edilen ülke"
          value="10"
          description="Aktif araştırma pazarı"
          tone="green"
        />

        <MetricCard
          label="Acil fırsat"
          value="1"
          description="Son başvuru tarihi yakın"
          tone="orange"
        />

        <MetricCard
          label="Tamamlanan başvuru"
          value="0"
          description="Henüz başvuru kaydı yok"
          tone="purple"
        />
      </section>

      <section className="dashboard-grid">
        <article className="panel">
          <div className="panel-header">
            <div>
              <h2>Yaklaşan aksiyonlar</h2>
              <p>Öncelikli başvuru ve takip görevleri</p>
            </div>

            <button className="text-button" type="button">
              Tümünü gör
              <ChevronRight size={16} />
            </button>
          </div>

          <div className="action-list">
            <div className="action-row">
              <div className="action-date urgent">
                <strong>05</strong>
                <span>EKİ</span>
              </div>

              <div className="action-content">
                <strong>XXII ROCKOWANIA – Mława</strong>
                <span>
                  Başvuru uygunluğunu organizatörden doğrula
                </span>
              </div>

              <span className="status status-urgent">Acil</span>
            </div>

            <div className="action-row">
              <div className="action-date">
                <strong>30</strong>
                <span>EYL</span>
              </div>

              <div className="action-content">
                <strong>Metal im Woid</strong>
                <span>
                  2027 başvuru penceresini haftalık kontrol et
                </span>
              </div>

              <span className="status status-monitor">İzleniyor</span>
            </div>

            <div className="action-row">
              <div className="action-date">
                <strong>01</strong>
                <span>EKİ</span>
              </div>

              <div className="action-content">
                <strong>Genel festival taraması</strong>
                <span>Ülke kaynakları ve hashtag taraması</span>
              </div>

              <span className="status status-planned">Planlandı</span>
            </div>
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

            <Route
              path="/festivals"
              element={
                <PlaceholderPage
                  title="Festivaller"
                  description="Festival kayıtlarını, edisyonları ve kaynakları yönetin."
                />
              }
            />

            <Route
              path="/applications"
              element={
                <PlaceholderPage
                  title="Başvurular"
                  description="Başvuru durumlarını, görüşmeleri ve takip tarihlerini yönetin."
                />
              }
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