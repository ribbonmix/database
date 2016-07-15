CREATE TABLE product.in_stock_item
(
  item_id            BIGINT PRIMARY KEY NOT NULL,
  available_quantity MEDIUMINT          NOT NULL,
  reserved_quantity  MEDIUMINT          NOT NULL,
  CONSTRAINT in_st_it_pr_it_fk FOREIGN KEY (item_id) REFERENCES product.item (item_id)
);