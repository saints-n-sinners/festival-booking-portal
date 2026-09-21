CREATE TABLE IF NOT EXISTS login_attempts (
  identifier TEXT PRIMARY KEY COLLATE NOCASE,
  failed_count INTEGER NOT NULL DEFAULT 0,
  first_failed_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  locked_until TEXT,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_login_attempts_locked_until
  ON login_attempts(locked_until);