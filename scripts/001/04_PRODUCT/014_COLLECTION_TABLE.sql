CREATE TABLE product.collection
(
  collection_id    BIGINT PRIMARY KEY                      NOT NULL,
  active           TINYINT,
  short_name       VARCHAR(255),
  name             VARCHAR(255)
    DEFAULT NULL,
  description      LONGTEXT
    DEFAULT NULL,
  image_id         BIGINT                                  NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL
);

CREATE INDEX co_sh_na_in ON product.collection (short_name);





