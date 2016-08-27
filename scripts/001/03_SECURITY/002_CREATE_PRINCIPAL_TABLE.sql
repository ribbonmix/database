CREATE TABLE security.principal
(
  principal_id      BIGINT PRIMARY KEY                      NOT NULL,
  enabled           TINYINT DEFAULT 1                       NOT NULL,
  secret            VARCHAR(64)                             NOT NULL,
  secret_expiration BIGINT DEFAULT 0                        NULL NULL,
  create_timestamp  TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp  TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  CONSTRAINT principal_person_fk FOREIGN KEY (principal_id) REFERENCES account.person (person_id)
)
