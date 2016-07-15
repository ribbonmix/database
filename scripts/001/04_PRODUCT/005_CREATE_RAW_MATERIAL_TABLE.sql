CREATE TABLE product.raw_material
(
  item_id BIGINT PRIMARY KEY NOT NULL,
  CONSTRAINT pr_ra_ma_pr_it_fk FOREIGN KEY (item_id) REFERENCES product.item (item_id)
);



