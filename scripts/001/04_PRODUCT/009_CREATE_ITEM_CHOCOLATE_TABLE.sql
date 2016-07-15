CREATE TABLE product.item_chocolate
(
  compound_item_id BIGINT NOT NULL,
  chocolate_id     BIGINT NOT NULL,
  PRIMARY KEY (compound_item_id, chocolate_id),
  CONSTRAINT pr_it_ch_com_fk FOREIGN KEY (compound_item_id) REFERENCES product.compound_item (item_id),
  CONSTRAINT pr_it_ch_ch_fk FOREIGN KEY (chocolate_id) REFERENCES product.chocolate (item_id)
);