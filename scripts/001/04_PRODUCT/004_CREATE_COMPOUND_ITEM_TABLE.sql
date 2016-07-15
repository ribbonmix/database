CREATE TABLE product.compound_item
(
  item_id   BIGINT PRIMARY KEY NOT NULL,
  work_time MEDIUMINT          NOT NULL,
  CONSTRAINT pr_co_it_pr_it_fk FOREIGN KEY (item_id) REFERENCES product.item (item_id)
);





