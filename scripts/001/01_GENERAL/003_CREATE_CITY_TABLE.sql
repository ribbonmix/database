CREATE TABLE general.city
(
  city_id          INT PRIMARY KEY                         AUTO_INCREMENT,
  country_id       INT,
  short_name       VARCHAR(255),
  name             VARCHAR(255),
  active           TINYINT DEFAULT 1                       NOT NULL,
  time_zone        VARCHAR(50)                             NOT NULL,
  default_city     TINYINT                                 DEFAULT 0,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  CONSTRAINT ge_ci_co_co_fk FOREIGN KEY (country_id) REFERENCES country (country_id)
);
CREATE INDEX ge_ci_co_in ON general.city (country_id);
