CREATE TABLE customer.shipping_info
(
  shipping_info_id    BIGINT PRIMARY KEY NOT NULL,
  customer_first_name VARCHAR(255)
                      COLLATE utf8_bin            DEFAULT NULL,
  customer_last_name  VARCHAR(255)
                      COLLATE utf8_bin            DEFAULT NULL,
  city_id             INT                NOT NULL,
  neighborhood_id     INT                NOT NULL,
  street_name         VARCHAR(255),
  unit                VARCHAR(255),
  building_number     INT,
  phone_country_id    INT                NOT NULL,
  phone_extension     INT,
  phone_number        BIGINT             NOT NULL,
  create_timestamp    TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_timestamp    TIMESTAMP          NOT NULL DEFAULT '0000-00-00 00:00:00',
  CONSTRAINT cu_sh_in_ci_fk FOREIGN KEY (city_id) REFERENCES general.city (city_id),
  CONSTRAINT cu_sh_in_ne_fk FOREIGN KEY (neighborhood_id) REFERENCES general.neighborhood (neighborhood_id),
  CONSTRAINT cu_sh_in_ph_co_fk FOREIGN KEY (phone_country_id) REFERENCES general.country (country_id)

)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin;