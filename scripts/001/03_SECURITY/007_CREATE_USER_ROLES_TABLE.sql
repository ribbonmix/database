CREATE TABLE security.user_roles
(
  principal_id BIGINT       NOT NULL,
  role         VARCHAR(255) NOT NULL,
  CONSTRAINT se_us_ro_pr_fk FOREIGN KEY (principal_id) REFERENCES principal (principal_id),
  CONSTRAINT se_us_ro_ro_fk FOREIGN KEY (role) REFERENCES role (role)
);
CREATE INDEX use_rol_p_in
  ON security.user_roles (principal_id);
CREATE INDEX use_rol_r_in
  ON security.user_roles (role);
