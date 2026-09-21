ALTER TABLE festivals
  ADD COLUMN external_id TEXT;

ALTER TABLE festivals
  ADD COLUMN event_type TEXT;

ALTER TABLE festivals
  ADD COLUMN scale_category TEXT;

ALTER TABLE festival_editions
  ADD COLUMN status_text TEXT;

ALTER TABLE festival_editions
  ADD COLUMN date_text TEXT;

ALTER TABLE festival_editions
  ADD COLUMN application_window_text TEXT;

ALTER TABLE applications
  ADD COLUMN application_method TEXT;

ALTER TABLE applications
  ADD COLUMN next_action TEXT;

ALTER TABLE applications
  ADD COLUMN response_text TEXT;

CREATE UNIQUE INDEX IF NOT EXISTS idx_festivals_external_id
  ON festivals(external_id);

CREATE TABLE IF NOT EXISTS festival_research (
  festival_id INTEGER PRIMARY KEY,
  priority TEXT
    CHECK (
      priority IS NULL
      OR priority IN ('A', 'B', 'C', 'D')
    ),
  is_stretch INTEGER NOT NULL DEFAULT 0
    CHECK (is_stretch IN (0, 1)),
  total_score REAL,
  genre_score REAL,
  foreign_score REAL,
  career_match_score REAL,
  contact_score REAL,
  economics_score REAL,
  route_score REAL,
  promotion_score REAL,
  class_cap REAL,
  confidence TEXT
    CHECK (
      confidence IS NULL
      OR confidence IN ('High', 'Medium', 'Low')
    ),
  pipeline_status TEXT,
  foreign_band_history TEXT,
  example_artists TEXT,
  fit_notes TEXT,
  next_action TEXT,
  last_verified TEXT,
  import_batch TEXT,
  source_row INTEGER,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (festival_id)
    REFERENCES festivals(id)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS festival_sources (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  festival_id INTEGER NOT NULL,
  source_url TEXT NOT NULL,
  source_order INTEGER NOT NULL DEFAULT 1
    CHECK (source_order IN (1, 2)),
  last_verified TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (festival_id, source_url),
  FOREIGN KEY (festival_id)
    REFERENCES festivals(id)
    ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_research_priority
  ON festival_research(priority);

CREATE INDEX IF NOT EXISTS idx_research_score
  ON festival_research(total_score);

CREATE INDEX IF NOT EXISTS idx_research_status
  ON festival_research(pipeline_status);

CREATE INDEX IF NOT EXISTS idx_research_confidence
  ON festival_research(confidence);

CREATE INDEX IF NOT EXISTS idx_sources_festival
  ON festival_sources(festival_id);