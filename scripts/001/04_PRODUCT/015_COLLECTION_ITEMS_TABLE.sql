CREATE TABLE product.collection_items
(
  collection_id   BIGINT NOT NULL,
  collection_item BIGINT NOT NULL,
  PRIMARY KEY (collection_id, collection_item),
  CONSTRAINT pr_it_coll_p_it_fk FOREIGN KEY (collection_id) REFERENCES product.collection (collection_id),
  CONSTRAINT pr_coll_it_pr_it_fk FOREIGN KEY (collection_item) REFERENCES product.item (item_id)
);