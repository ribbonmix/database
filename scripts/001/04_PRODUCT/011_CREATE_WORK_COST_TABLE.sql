CREATE TABLE product.work_cost
(
  work_cost_id BIGINT PRIMARY KEY NOT NULL,
  date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  cost FLOAT(7, 6) NOT NULL
);