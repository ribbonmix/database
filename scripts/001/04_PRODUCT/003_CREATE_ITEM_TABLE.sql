CREATE TABLE product.item
(
  item_id          BIGINT PRIMARY KEY                      NOT NULL,
  active           TINYINT,
  price_auto_calc  TINYINT,
  short_name       VARCHAR(255),
  name             VARCHAR(255)
    DEFAULT NULL,
  description      LONGTEXT
    DEFAULT NULL,
  item_category    SMALLINT,
  image_id         BIGINT                                  NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,

  CONSTRAINT pr_it_It_ca_fk FOREIGN KEY (item_category) REFERENCES item_category (item_category_id)
);

CREATE INDEX it_sh_na_in
  ON product.item (short_name);





