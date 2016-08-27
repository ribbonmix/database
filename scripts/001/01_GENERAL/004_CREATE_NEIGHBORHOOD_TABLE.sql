CREATE TABLE general.neighborhood
(
  neighborhood_id  INT PRIMARY KEY AUTO_INCREMENT,
  city_id          INT                                     NOT NULL,
  short_name       VARCHAR(255)                            NOT NULL,
  name             VARCHAR(255),
  postal_code      VARCHAR(255)                            NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  CONSTRAINT ge_ne_ci_ci_fk FOREIGN KEY (city_id) REFERENCES city (city_id)
);
CREATE INDEX ge_ne_ci_in
  ON general.neighborhood (city_id);
