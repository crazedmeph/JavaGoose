create database goose;
create user goose with password 'pass';
GRANT CONNECT ON DATABASE goose TO goose;
GRANT pg_read_all_data TO goose;
GRANT pg_write_all_data TO goose;

DROP TABLE IF EXISTS items;
CREATE TABLE items (
  item_id SERIAL PRIMARY KEY,
  item_template_id INT NOT NULL,
  item_name VARCHAR(64) NOT NULL,
  item_description VARCHAR(64) DEFAULT '' NOT NULL,
  player_hp INT DEFAULT 0 NOT NULL,
  player_mp INT DEFAULT 0 NOT NULL,
  player_sp INT DEFAULT 0 NOT NULL,
  stat_ac SMALLINT DEFAULT 0 NOT NULL,
  stat_str SMALLINT DEFAULT 0 NOT NULL,
  stat_sta SMALLINT DEFAULT 0 NOT NULL,
  stat_dex SMALLINT DEFAULT 0 NOT NULL,
  stat_int SMALLINT DEFAULT 0 NOT NULL,
  res_fire SMALLINT DEFAULT 0 NOT NULL,
  res_water SMALLINT DEFAULT 0 NOT NULL,
  res_spirit SMALLINT DEFAULT 0 NOT NULL,
  res_air SMALLINT DEFAULT 0 NOT NULL,
  res_earth SMALLINT DEFAULT 0 NOT NULL,
  weapon_damage SMALLINT DEFAULT 1 NOT NULL,
  item_value BIGINT DEFAULT 0 NOT NULL,
  graphic_tile INT NOT NULL,
  graphic_equip SMALLINT NOT NULL,
  graphic_r SMALLINT DEFAULT 0 NOT NULL,
  graphic_g SMALLINT DEFAULT 0 NOT NULL,
  graphic_b SMALLINT DEFAULT 0 NOT NULL,
  graphic_a SMALLINT DEFAULT 0 NOT NULL,
  stat_multiplier DECIMAL DEFAULT 1 NOT NULL,
  body_state SMALLINT DEFAULT 1 NOT NULL,
  bound CHAR(1) DEFAULT '0' NOT NULL
);

INSERT INTO items (item_id, item_template_id, item_name, graphic_tile, graphic_equip) VALUES (5001, 1, 'Gold', 120100, 0);