CREATE TABLE account.user_profile
(
  profile_id       BIGINT PRIMARY KEY NOT NULL,
  active           TINYINT            NOT NULL DEFAULT 1,
  create_timestamp TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_timestamp TIMESTAMP          NOT NULL DEFAULT '0000-00-00 00:00:00',
  CONSTRAINT account_person_fk FOREIGN KEY (profile_id) REFERENCES account.person (person_id)
)
