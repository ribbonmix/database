CREATE TABLE security.target_type
(
  target_type             VARCHAR(10) PRIMARY KEY                 NOT NULL,
  target_type_description VARCHAR(100)                            NOT NULL,
  create_timestamp        TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp        TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL
)

