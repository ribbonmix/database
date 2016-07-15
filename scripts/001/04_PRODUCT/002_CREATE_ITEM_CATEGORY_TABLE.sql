CREATE TABLE product.item_category
(
  item_category_id SMALLINT PRIMARY KEY NOT NULL,
  short_name       VARCHAR(255),
  name             VARCHAR(255) DEFAULT NULL,
  description      LONGTEXT     DEFAULT NULL,
  category_levels  VARCHAR(255)         NOT NULL
);