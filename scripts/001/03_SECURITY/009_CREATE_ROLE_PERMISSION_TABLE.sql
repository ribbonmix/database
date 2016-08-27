CREATE TABLE security.role_permission
(
  role            VARCHAR(255) NOT NULL,
  permission      VARCHAR(255) NOT NULL,
  permission_type VARCHAR(7)   NOT NULL,
  target_id       BIGINT,
  CONSTRAINT se_us_ro_ro_pem_fk FOREIGN KEY (role) REFERENCES role (role),
  CONSTRAINT se_us_pe_ro_pem_fk FOREIGN KEY (permission) REFERENCES permission (permission)
);

CREATE INDEX rol_perm_r_in
  ON security.role_permission (role);