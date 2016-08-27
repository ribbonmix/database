CREATE TABLE account.person
(
  person_id        BIGINT PRIMARY KEY NOT NULL,
  first_name       VARCHAR(100)
                   COLLATE utf8_bin   NOT NULL,
  last_name        VARCHAR(255)
                   COLLATE utf8_bin   NOT NULL,
  date_of_birth    DATE                        DEFAULT '0000-00-00',
  gender           VARCHAR(6)                  DEFAULT NULL,
  contact_id       BIGINT             NOT NULL,
  create_timestamp TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_timestamp TIMESTAMP          NOT NULL DEFAULT '0000-00-00 00:00:00',
  CONSTRAINT pe_co_co_id_fk FOREIGN KEY (contact_id) REFERENCES account.contact (contact_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin

