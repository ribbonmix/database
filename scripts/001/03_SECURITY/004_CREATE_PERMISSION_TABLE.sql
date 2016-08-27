CREATE TABLE security.permission
(
  permission       VARCHAR(255) PRIMARY KEY                NOT NULL,
  description      VARCHAR(255)                            NOT NULL,
  target_type      VARCHAR(10)                             NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL,
  CONSTRAINT se_pe_ta_ty_fk FOREIGN KEY (target_type) REFERENCES target_type (target_type)
);
CREATE INDEX per_tar_typ_in
  ON security.permission (target_type);
