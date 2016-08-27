CREATE TABLE account.phone
(
  phone_id         BIGINT PRIMARY KEY                      NOT NULL,
  confirmed        TINYINT                                 NOT NULL DEFAULT 0,
  country_id       INT                                     NOT NULL,
  default_phone    TINYINT DEFAULT 0                       NOT NULL,
  phone_extension  INT,
  phone_number     BIGINT                                  NOT NULL,
  contact_id       BIGINT                                  NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  CONSTRAINT ac_ph_ac_co_fk FOREIGN KEY (contact_id) REFERENCES account.contact (contact_id),
  CONSTRAINT ac_ph_co_co_fk FOREIGN KEY (country_id) REFERENCES general.country (country_id)
);
CREATE INDEX ph_con_in
  ON account.phone (contact_id);
CREATE INDEX ph_cou_in
  ON account.phone (country_id);
CREATE INDEX ph_nu_in
  ON account.phone (phone_number);
