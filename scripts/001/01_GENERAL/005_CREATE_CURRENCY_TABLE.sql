CREATE TABLE general.currency
(
  currency_id      INT PRIMARY KEY AUTO_INCREMENT,
  short_name       CHAR(3)                                 NOT NULL,
  name             VARCHAR(255),
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL
);
