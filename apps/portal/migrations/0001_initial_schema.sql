CREATE TABLE IF NOT EXISTS countries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL COLLATE NOCASE UNIQUE,
  iso_code TEXT NOT NULL COLLATE NOCASE UNIQUE,
  is_active INTEGER NOT NULL DEFAULT 1 CHECK (is_active IN (0, 1)),
  notes TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS organizers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  country_id INTEGER,
  name TEXT NOT NULL,
  organizer_type TEXT,
  website_url TEXT,
  instagram_url TEXT,
  facebook_url TEXT,
  email TEXT,
  phone TEXT,
  notes TEXT,
  is_active INTEGER NOT NULL DEFAULT 1 CHECK (is_active IN (0, 1)),
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS festivals (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  country_id INTEGER NOT NULL,
  organizer_id INTEGER,
  name TEXT NOT NULL,
  city TEXT,
  venue TEXT,
  genres TEXT,
  scale TEXT,
  website_url TEXT,
  instagram_url TEXT,
  facebook_url TEXT,
  source_url TEXT,
  notes TEXT,
  is_active INTEGER NOT NULL DEFAULT 1 CHECK (is_active IN (0, 1)),
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE RESTRICT,
  FOREIGN KEY (organizer_id) REFERENCES organizers(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS festival_editions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  festival_id INTEGER NOT NULL,
  edition_year INTEGER NOT NULL,
  start_date TEXT,
  end_date TEXT,
  application_deadline TEXT,
  application_status TEXT NOT NULL DEFAULT 'unknown',
  application_url TEXT,
  lineup_status TEXT,
  notes TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (festival_id, edition_year),
  FOREIGN KEY (festival_id) REFERENCES festivals(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  festival_id INTEGER,
  organizer_id INTEGER,
  name TEXT,
  role TEXT,
  email TEXT,
  phone TEXT,
  instagram_handle TEXT,
  facebook_url TEXT,
  preferred_channel TEXT,
  verified_at TEXT,
  notes TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (festival_id) REFERENCES festivals(id) ON DELETE CASCADE,
  FOREIGN KEY (organizer_id) REFERENCES organizers(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS applications (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  festival_edition_id INTEGER NOT NULL,
  band_name TEXT NOT NULL DEFAULT 'Saints ''N'' Sinners',
  status TEXT NOT NULL DEFAULT 'not_started',
  priority TEXT NOT NULL DEFAULT 'normal',
  assigned_to TEXT,
  submitted_at TEXT,
  follow_up_date TEXT,
  response_date TEXT,
  offer_amount REAL,
  offer_currency TEXT,
  notes TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (festival_edition_id, band_name),
  FOREIGN KEY (festival_edition_id)
    REFERENCES festival_editions(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS application_actions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  application_id INTEGER NOT NULL,
  action_type TEXT NOT NULL,
  action_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  performed_by TEXT,
  details TEXT,
  next_action_date TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (application_id) REFERENCES applications(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_festivals_country
  ON festivals(country_id);

CREATE INDEX IF NOT EXISTS idx_festivals_name
  ON festivals(name);

CREATE INDEX IF NOT EXISTS idx_editions_deadline
  ON festival_editions(application_deadline);

CREATE INDEX IF NOT EXISTS idx_applications_status
  ON applications(status);

CREATE INDEX IF NOT EXISTS idx_applications_follow_up
  ON applications(follow_up_date);

CREATE INDEX IF NOT EXISTS idx_actions_application
  ON application_actions(application_id);