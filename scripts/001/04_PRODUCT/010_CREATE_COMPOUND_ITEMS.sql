CREATE TABLE product.compound_items
(
  parent_item_id BIGINT   NOT NULL,
  item_id        BIGINT   NOT NULL,
  quantity       SMALLINT NOT NULL,
  PRIMARY KEY (parent_item_id, item_id),
  CONSTRAINT pr_co_it_p_it_fk FOREIGN KEY (parent_item_id) REFERENCES product.item (item_id),
  CONSTRAINT pr_co_it_it_fk FOREIGN KEY (item_id) REFERENCES product.item (item_id)
);