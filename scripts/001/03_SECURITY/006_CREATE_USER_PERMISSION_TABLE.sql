CREATE TABLE security.user_permission
(
  principal_id     BIGINT                                  NOT NULL,
  permission       VARCHAR(255)                            NOT NULL,
  permission_type  VARCHAR(7)                              NOT NULL,
  target_id        BIGINT,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  PRIMARY KEY (principal_id, permission, target_id),
  CONSTRAINT se_us_pe_pr_fk FOREIGN KEY (principal_id) REFERENCES principal (principal_id),
  CONSTRAINT se_us_pe_pem_fk FOREIGN KEY (permission) REFERENCES permission (permission)
);
CREATE INDEX use_per_in
  ON security.user_permission (principal_id);
