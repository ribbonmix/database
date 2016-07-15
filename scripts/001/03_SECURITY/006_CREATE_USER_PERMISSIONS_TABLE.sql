CREATE TABLE security.user_permissions
(
  principal_id     BIGINT                                  NOT NULL,
  permission       VARCHAR(255)                            NOT NULL,
  target_id        BIGINT                                  NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  PRIMARY KEY (principal_id, permission, target_id),
  CONSTRAINT se_us_pe_pr_fk FOREIGN KEY (principal_id) REFERENCES principal (principal_id)
);
CREATE INDEX use_per_in ON security.user_permissions (principal_id);
