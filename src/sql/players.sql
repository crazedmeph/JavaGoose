USE Goose;

DROP TABLE IF EXISTS players;
CREATE TABLE players (
  player_id INT NOT NULL,
  player_name VARCHAR(50) NOT NULL,
  player_title VARCHAR(50) DEFAULT '' NOT NULL,
  player_surname VARCHAR(50) DEFAULT '' NOT NULL,
  password_hash CHAR(32) NOT NULL,
  password_salt VARCHAR(50) NOT NULL,
  access_status SMALLINT DEFAULT 2 NOT NULL,
  map_id SMALLINT DEFAULT 1 NOT NULL,
  map_x SMALLINT DEFAULT 50 NOT NULL,
  map_y SMALLINT DEFAULT 50 NOT NULL,
  player_facing SMALLINT DEFAULT 2 NOT NULL,
  bound_id SMALLINT DEFAULT 1 NOT NULL,
  bound_x SMALLINT DEFAULT 50 NOT NULL,
  bound_y SMALLINT DEFAULT 50 NOT NULL,
  player_gold BIGINT DEFAULT 5000 NOT NULL,
  player_level SMALLINT DEFAULT 1 NOT NULL,
  experience BIGINT DEFAULT 0 NOT NULL,
  experience_sold BIGINT DEFAULT 0 NOT NULL,
  player_hp INT DEFAULT 0 NOT NULL,
  player_mp INT DEFAULT 0 NOT NULL,
  player_sp INT DEFAULT 0 NOT NULL,
  class_id SMALLINT DEFAULT 1 NOT NULL,
  guild_id SMALLINT DEFAULT 0 NOT NULL,
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
  body_id SMALLINT DEFAULT 1 NOT NULL,
  face_id SMALLINT DEFAULT 70 NOT NULL,
  hair_id SMALLINT DEFAULT 26 NOT NULL,
  hair_r SMALLINT DEFAULT 0 NOT NULL,
  hair_g SMALLINT DEFAULT 0 NOT NULL,
  hair_b SMALLINT DEFAULT 0 NOT NULL,
  hair_a SMALLINT DEFAULT 0 NOT NULL,
  aether_threshold DECIMAL(9,4) DEFAULT 0 NOT NULL,
  toggle_settings BIGINT DEFAULT 0 NOT NULL,
  
  PRIMARY KEY(player_id)
);

DROP TABLE IF EXISTS inventory;
CREATE TABLE inventory (
  player_id INT NOT NULL,
  item_id INT NOT NULL,
  slot SMALLINT NOT NULL,
  stack INT NOT NULL
);

DROP TABLE IF EXISTS equipped;
CREATE TABLE equipped (
  player_id INT NOT NULL,
  item_id INT NOT NULL,
  slot SMALLINT NOT NULL
);

DROP TABLE IF EXISTS combinebag;
CREATE TABLE combinebag (
  player_id INT NOT NULL,
  item_id INT NOT NULL,
  slot SMALLINT NOT NULL,
  stack INT NOT NULL
);

DROP TABLE IF EXISTS spellbook;
CREATE TABLE spellbook (
  player_id INT NOT NULL,
  spell_id INT NOT NULL,
  slot SMALLINT NOT NULL,
  last_casted BIGINT DEFAULT 0 NOT NULL
);

DROP PROCEDURE AddPlayerSpells;
CREATE PROCEDURE AddPlayerSpells @PlayerName VARCHAR(32) AS

DECLARE @PlayerID INT
DECLARE @PlayerClass INT
DECLARE @PlayerLevel INT
SELECT @PlayerID=player_id, @PlayerClass=class_id, @PlayerLevel=player_level 
FROM players WHERE player_name=@PlayerName

DECLARE @SpellClass INT
DECLARE @SpellLevel INT
DECLARE @SpellID INT

DECLARE @Counter INT = 1

DECLARE ClassSpellCursor CURSOR FOR (SELECT class_id, level, spell_id FROM classes_levelup_spells)
OPEN ClassSpellCursor

FETCH NEXT FROM ClassSpellCursor INTO @SpellClass, @SpellLevel, @SpellID
WHILE @@FETCH_STATUS = 0
BEGIN

	IF (@PlayerClass = @SpellClass) AND (@PlayerLevel >= @SpellLevel) BEGIN
		INSERT INTO spellbook (player_id, spell_id, slot) VALUES (@PlayerID, @SpellID, @Counter)
		SET @Counter = @Counter + 1
	END

	FETCH NEXT FROM ClassSpellCursor INTO @SpellClass, @SpellLevel, @SpellID
END

CLOSE ClassSpellCursor
DEALLOCATE ClassSpellCursor