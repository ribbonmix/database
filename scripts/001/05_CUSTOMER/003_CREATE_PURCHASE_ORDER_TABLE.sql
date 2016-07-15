CREATE TABLE customer.purchase_order
(
  purchase_order_id BIGINT PRIMARY KEY                                            NOT NULL,
  customer          BIGINT                                                        NOT NULL,
  order_date        TIMESTAMP DEFAULT CURRENT_TIMESTAMP                           NOT NULL,
  calling_date      TIMESTAMP,
  status            VARCHAR(255)                                                  NOT NULL,
  delivery_date     TIMESTAMP,
  shipping_to       BIGINT                                                        NOT NULL,
  create_timestamp  TIMESTAMP DEFAULT CURRENT_TIMESTAMP                           NOT NULL,
  update_timestamp  TIMESTAMP DEFAULT '0000-00-00 00:00:00'                       NOT NULL,
  CONSTRAINT pu_or_cu_fk FOREIGN KEY (customer) REFERENCES account.person (person_id),
  CONSTRAINT pu_or_sh_fk FOREIGN KEY (shipping_to) REFERENCES customer.shipping_info (shipping_info_id)
);