CREATE TABLE account.account
(
  account_id       BIGINT PRIMARY KEY NOT NULL,
  person_id        BIGINT                      DEFAULT NULL,
  active           TINYINT                     DEFAULT NULL,
  create_timestamp TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_timestamp TIMESTAMP          NOT NULL DEFAULT '0000-00-00 00:00:00',
  CONSTRAINT account_person_fk FOREIGN KEY (person_id) REFERENCES account.person (person_id)
)
