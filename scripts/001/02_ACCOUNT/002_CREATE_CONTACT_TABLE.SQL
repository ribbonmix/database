CREATE TABLE account.contact
(
  contact_id       BIGINT PRIMARY KEY NOT NULL,
  create_timestamp TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_timestamp TIMESTAMP          NOT NULL DEFAULT '0000-00-00 00:00:00'
);

