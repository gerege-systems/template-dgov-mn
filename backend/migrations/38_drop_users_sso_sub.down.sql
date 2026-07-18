-- Government Template Platform V3.0
-- Rollback: sso_sub identity баганыг (migration 24) сэргээнэ.
ALTER TABLE users ADD COLUMN IF NOT EXISTS sso_sub TEXT;

CREATE UNIQUE INDEX IF NOT EXISTS idx_users_sso_sub
    ON users (sso_sub) WHERE sso_sub IS NOT NULL;
