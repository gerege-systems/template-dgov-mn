-- Government Template Platform V3.0
-- dgov SSO (OIDC consumer) нэвтрэлтийг платформоос хассан тул sso_sub identity
-- багана шаардлагагүй болов. Платформ өөрөө одоо sso.dgov.mn дээр OIDC provider
-- (issuer) бөгөөд гадаад SSO-д RP болж нэвтэрдэггүй. Migration 24-ийг буцаана.
DROP INDEX IF EXISTS idx_users_sso_sub;
ALTER TABLE users DROP COLUMN IF EXISTS sso_sub;
