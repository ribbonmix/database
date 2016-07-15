CREATE TABLE account.email
(
  email_id         BIGINT PRIMARY KEY NOT NULL,
  confirmed        TINYINT DEFAULT 0  NOT NULL,
  email_address    VARCHAR(255)
                   COLLATE utf8_bin   NOT NULL,
  contact_id       BIGINT                      DEFAULT NULL,
  default_email    TINYINT,
  create_timestamp TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_timestamp TIMESTAMP          NOT NULL DEFAULT '0000-00-00 00:00:00',
  CONSTRAINT em_co_co_id_fk FOREIGN KEY (contact_id) REFERENCES account.contact (contact_id)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin
