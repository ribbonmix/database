CREATE TABLE account.address
(
  address_id       BIGINT PRIMARY KEY                      NOT NULL,
  city_id          INT                                     NOT NULL,
  neighborhood_id  INT                                     NOT NULL,
  street_name      VARCHAR(255),
  unit             VARCHAR(255),
  building_number  INT,
  confirmed        TINYINT,
  default_address  TINYINT,
  contact_id       BIGINT,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  CONSTRAINT ac_ad_co_co_fk FOREIGN KEY (contact_id) REFERENCES account.contact (contact_id),
  CONSTRAINT ac_ad_ci_fk FOREIGN KEY (city_id) REFERENCES general.city (city_id),
  CONSTRAINT ac_ad_ne_fk FOREIGN KEY (neighborhood_id) REFERENCES general.neighborhood (neighborhood_id)
);
CREATE INDEX co_ad_co_in ON account.address (contact_id);
