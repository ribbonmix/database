CREATE TABLE security.principal
(
  principal_id      BIGINT PRIMARY KEY                      NOT NULL,
  enabled           TINYINT,
  secret            VARCHAR(64),
  secret_expiration BIGINT,
  create_timestamp  TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp  TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL
)
