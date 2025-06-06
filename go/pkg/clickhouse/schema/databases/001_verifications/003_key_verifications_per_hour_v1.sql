CREATE TABLE IF NOT EXISTS verifications.key_verifications_per_hour_v1
(
  time          DateTime,
  workspace_id  String,
  key_space_id  String,
  identity_id   String,
  key_id        String,
  outcome       LowCardinality(String),
  count         Int64
)
ENGINE = SummingMergeTree()
ORDER BY (workspace_id, key_space_id, time, identity_id, key_id)
;
