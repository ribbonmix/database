CREATE TABLE customer.purchase_order_items
(
  purchase_order_id BIGINT      NOT NULL,
  order_item        BIGINT      NOT NULL,
  price             FLOAT(7, 3) NOT NULL,
  quantity          SMALLINT    NOT NULL,
  discount_type     SMALLINT,
  discount_value    VARCHAR(255),
  create_timestamp  TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_timestamp  TIMESTAMP   NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (purchase_order_id, order_item),
  CONSTRAINT pu_or_it_pu_or_fk FOREIGN KEY (purchase_order_id) REFERENCES customer.purchase_order (purchase_order_id),
  CONSTRAINT pu_or_it_or_it_fk FOREIGN KEY (order_item) REFERENCES product.item (item_id)
);