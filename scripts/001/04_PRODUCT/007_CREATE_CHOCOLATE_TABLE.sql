CREATE TABLE product.chocolate
(
  item_id BIGINT PRIMARY KEY NOT NULL,
  weight  SMALLINT           NOT NULL,
  CONSTRAINT pr_ch_pr_it_fk FOREIGN KEY (item_id) REFERENCES product.item (item_id)
);