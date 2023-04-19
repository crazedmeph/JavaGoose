USE Goose;

DROP TABLE IF EXISTS guilds;

CREATE TABLE guilds (
  guild_id SERIAL PRIMARY KEY,
  guild_name varchar(255),
  guild_motd varchar(255)
)