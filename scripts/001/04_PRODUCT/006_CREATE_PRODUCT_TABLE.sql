CREATE TABLE product.product
(
  item_id   BIGINT PRIMARY KEY NOT NULL,
  work_time MEDIUMINT          NOT NULL,
  CONSTRAINT pr_pr_pr_it_fk FOREIGN KEY (item_id) REFERENCES product.item (item_id)
);