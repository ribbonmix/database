/* Country Data */
INSERT INTO general.country (country_id, calling_code, name, iso2, iso3, weekend_start, create_timestamp, update_timestamp)
VALUES (1, 962, 'Jordan', 'JO', 'JOR', 5, '2016-02-21 22:41:17', NULL);

/* City Data */
INSERT INTO general.city (city_id, country_id, short_name, name, active, zone_id, default_city, create_timestamp, update_timestamp)
VALUES (1, 1, 'amman', 'Amman', 1, 'Asia/Amman', 1, '2016-02-21 22:45:27', NULL);

/* Neighborhood Data */
INSERT INTO general.neighborhood (neighborhood_id, city_id, short_name, name, postal_code, create_timestamp, update_timestamp)
VALUES (1, 1, 'jubaiha', 'Jubaiha', '11941', '2016-02-21 23:13:48', NULL);

/* Currency Data */
INSERT INTO general.currency (currency_id, short_name, name, create_timestamp, update_timestamp)
VALUES (1, 'jod', 'Jordanian Dinar', '2016-02-21 01:45:35', NULL);
