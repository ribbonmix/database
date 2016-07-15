CREATE TABLE product.item_price
(
  item_id BIGINT PRIMARY KEY NOT NULL,
  date    TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  unit    VARCHAR(255)       NOT NULL,
  price   FLOAT(7, 3)        NOT NULL,
  CONSTRAINT pr_it_pri_pr_it FOREIGN KEY (item_id) REFERENCES product.item (item_id)
);