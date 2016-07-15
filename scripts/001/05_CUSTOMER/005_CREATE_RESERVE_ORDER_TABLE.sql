CREATE TABLE customer.reserve_order
(
  customer         BIGINT                                  NOT NULL,
  order_item       BIGINT                                  NOT NULL,
  price            FLOAT(7, 3)                             NOT NULL,
  discount_type    SMALLINT,
  discount_value   VARCHAR(255),
  quantity         SMALLINT                                NOT NULL,
  expiration_date  TIMESTAMP,
  status           VARCHAR(255)                            NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  PRIMARY KEY (customer, order_item),
  CONSTRAINT cu_re_or_cu FOREIGN KEY (customer) REFERENCES account.person (person_id),
  CONSTRAINT cu_re_or_or_it_fk FOREIGN KEY (order_item) REFERENCES product.item (item_id)

);


