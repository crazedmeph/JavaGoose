USE Goose;

DROP TABLE IF EXISTS guilds;

CREATE TABLE guilds (
  guild_id int(11) NOT NULL AUTO_INCREMENT,
  guild_name varchar(255),
  guild_motd varchar(255)
)