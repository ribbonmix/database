CREATE TABLE security.role
(
  role             VARCHAR(255) PRIMARY KEY                NOT NULL,
  description      VARCHAR(255)                            NOT NULL,
  create_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP     NOT NULL,
  update_timestamp TIMESTAMP DEFAULT '0000-00-00 00:00:00' NOT NULL
);
