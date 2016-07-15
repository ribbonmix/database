CREATE TABLE account.twitter_account
(
  account_id             BIGINT PRIMARY KEY NOT NULL,
  twitter_account_active TINYINT                     DEFAULT NULL,
  create_timestamp       TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_timestamp       TIMESTAMP          NOT NULL DEFAULT '0000-00-00 00:00:00',
  CONSTRAINT tw_ac_ac_fk FOREIGN KEY (account_id) REFERENCES account.account (account_id)
)
