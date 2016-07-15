CREATE TABLE security.durable_token
(
  identifier       BIGINT PRIMARY KEY                      NOT NULL,
  expiration       BIGINT                                  NOT NULL,
  principal_id     BIGINT                                  NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  CONSTRAINT se_du_to_pr_fk FOREIGN KEY (principal_id) REFERENCES principal (principal_id)
);
