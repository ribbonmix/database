CREATE TABLE general.country
(
  country_id       INT PRIMARY KEY AUTO_INCREMENT,
  calling_code     INT                                     NOT NULL,
  name             VARCHAR(255),
  iso2             VARCHAR(255)                            NOT NULL,
  iso3             VARCHAR(255)                            NOT NULL,
  weekend_start    TINYINT DEFAULT 5                       NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL
);
CREATE UNIQUE INDEX ge_co_is2_in
  ON general.country (iso2);
CREATE UNIQUE INDEX ge_co_is3_in
  ON general.country (iso3);

