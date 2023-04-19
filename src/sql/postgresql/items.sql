USE Goose;

DROP TABLE IF EXISTS item_templates;
CREATE TABLE item_templates (
  item_template_id SERIAL PRIMARY KEY,
  item_usetype SMALLINT NOT NULL,
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
  min_experience BIGINT DEFAULT 0 NOT NULL,
  min_level SMALLINT DEFAULT 0 NOT NULL,
  max_experience BIGINT DEFAULT 0 NOT NULL,
  max_level SMALLINT DEFAULT 0 NOT NULL,
  weapon_damage SMALLINT DEFAULT 1 NOT NULL,
  weapon_delay SMALLINT DEFAULT 10 NOT NULL,
  item_slot SMALLINT NOT NULL,
  item_type SMALLINT NOT NULL,
  item_value BIGINT DEFAULT 0 NOT NULL,
  lore CHAR(1) DEFAULT '0' NOT NULL,
  bindonpickup CHAR(1) DEFAULT '0' NOT NULL,
  bindonequip CHAR(1) DEFAULT '0' NOT NULL,
  event CHAR(1) DEFAULT '0' NOT NULL,
  graphic_tile INT NOT NULL,
  graphic_equip SMALLINT DEFAULT 0 NOT NULL,
  graphic_r SMALLINT DEFAULT 0 NOT NULL,
  graphic_g SMALLINT DEFAULT 0 NOT NULL,
  graphic_b SMALLINT DEFAULT 0 NOT NULL,
  graphic_a SMALLINT DEFAULT 0 NOT NULL,
  class_restrictions BIGINT DEFAULT 0 NOT NULL,
  stack_size SMALLINT DEFAULT 1 NOT NULL,
  body_state SMALLINT DEFAULT 1 NOT NULL,
  spell_effect_id INT DEFAULT 0 NOT NULL,
  spell_effect_chance DECIMAL(9,4) DEFAULT 100 NOT NULL,
  learn_spell_id INT DEFAULT 0 NOT NULL
);

/*
class_restrictions:

32 16 08 04 02 01
 p  m  w  r  c  0
 
value = 63 - number above class name
 
class		id	class_restriction value
commoner	1	61
rogue		2	59
warrior		3	55
magus		4	47
priest		5	31

*/

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size) 
VALUES (1, 2, 'Gold', 0, 0, 120100, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip) 
VALUES (2, 0, 'Old Rags', 3, 10, 1, 10, 120241, 4);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state) 
VALUES (3, 0, 'Stick', 3, 2, 4, 10, 120014, 6, 4);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id)
VALUES (4, 1, 'Small Health Potion', 15, 0, 50, 120115, 0, 99, 1);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (5, 1, 'Small Mana Potion', 15, 0, 50, 120112, 0, 99, 2);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	weapon_damage, stat_str, player_hp, 
	item_value, graphic_tile, graphic_equip, body_state) 
VALUES (6, 0, 'Tin Can', 2, 5, 13, 1, 5, 120, 120020, 7, 4);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (7, 2, 'Rabbit Fur', 0, 0,120601, 0, 99, 40);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (8, 2, 'Rabbit Pelt', 0, 0, 120604, 0, 99, 80);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, player_mp, 
	graphic_tile, graphic_equip) 
VALUES (9, 0, 'Bunny Ears', 0, 0, 20, 3, 20, 20, 120222, 13);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (10, 3, 'Scroll: Healing 1', 0, 0, 1, 100, 31, 1, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, min_level) 
VALUES (11, 0, 'Small Hammer', 12, 2, 4, 500, 120039, 8, 4, 22, 5);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, min_level) 
VALUES (12, 0, 'Wooden Stave', 9, 3, 7, 500, 120021, 5, 3, 38, 5);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, min_level) 
VALUES (13, 0, 'Small Dagger', 12, 2, 6, 500, 120013, 1, 4, 34, 5);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, min_level) 
VALUES (14, 0, 'Small Sword', 14, 2, 5, 500, 120015, 4, 4, 50, 5);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, min_level) 
VALUES (15, 0, 'Stone Hammer', 15, 2, 4, 1500, 120039, 8, 4, 22, 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, min_level) 
VALUES (16, 0, 'Hardwood Stave', 15, 3, 7, 1500, 120021, 5, 3, 38, 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, min_level) 
VALUES (17, 0, 'Grim Dagger', 19, 2, 6, 1500, 120013, 1, 4, 34, 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, min_level) 
VALUES (18, 0, 'Long Sword', 24, 2, 5, 1500, 120015, 4, 4, 50, 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (19, 2, 'Sun Flower', 0, 0, 120120, 0, 1, 50);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (20, 2, 'Pile of Crap', 0, 0, 120124, 0, 99, 20);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (21, 2, 'Rubber Ducky', 0, 0, 120111, 0, 1, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (22, 3, 'Scroll: Fortify 1', 0, 0, 2, 600, 31, 6, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (23, 3, 'Scroll: Backstab 1', 0, 0, 3, 100, 59, 5, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (24, 3, 'Scroll: Taunt', 0, 0, 4, 100, 55, 1, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (25, 3, 'Scroll: Elemental Strike 1', 0, 0, 5, 100, 47, 1, '1', 120110, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (26, 3, 'Scroll: Elemental Strike 2', 0, 0, 6, 600, 47, 6, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (27, 3, 'Scroll: Arcane Shield 1', 0, 0, 7, 700, 47, 7, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (28, 3, 'Scroll: Elemental Strike 3', 0, 0, 8, 1100, 47, 11, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (29, 3, 'Scroll: Elemental Shield 1', 0, 0, 9, 1200, 47, 12, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (30, 3, 'Scroll: Teleportation', 0, 0, 10, 1400, 47, 14, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (31, 3, 'Scroll: Root', 0, 0, 11, 1500, 15, 15, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (32, 3, 'Scroll: Elemental Strike 4', 0, 0, 12, 1600, 47, 16, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (33, 3, 'Scroll: Snare', 0, 0, 13, 2000, 47, 20, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (34, 3, 'Scroll: Gate', 0, 0, 15, 1300, 15, 13, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (35, 3, 'Scroll: Regeneration 1', 0, 0, 16, 2300, 47, 23, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (36, 3, 'Scroll: Elemental Strike 5', 0, 0, 14, 2100, 47, 21, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (37, 3, 'Scroll: Bind Self', 0, 0, 17, 2300, 15, 23, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (38, 3, 'Scroll: Group Teleportation', 0, 0, 18, 2500, 47, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (39, 3, 'Scroll: Elemental Strike 6', 0, 0, 19, 2600, 47, 26, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (40, 3, 'Scroll: Rampant Rage', 0, 0, 20, 100, 55, 5, '1', 120110, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	weapon_damage, stat_dex, player_hp, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, class_restrictions, lore) 
VALUES (41, 0, 'Winter Blade', 2, 6, 26, 5, 5, 500, 120211, 27, 4, 12, 51, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id)
VALUES (42, 1, 'Health Potion', 15, 0, 150, 120116, 0, 99, 31);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (43, 1, 'Mana Potion', 15, 0, 150, 120113, 0, 99, 32);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id)
VALUES (44, 1, 'Large Health Potion', 15, 0, 300, 120117, 0, 99, 33);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (45, 1, 'Large Mana Potion', 15, 0, 300, 120114, 0, 99, 34);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, stat_sta, player_hp, player_mp, lore) 
VALUES (46, 0, 'Frozen Mittens', 5, 9, 0, 100, 120210, 0, 10, 1, 10, 10, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, player_hp, lore, spell_effect_id) 
VALUES (47, 0, 'Cloak of Chilling Speed', 10, 7, 0, 250, 110034, 0, 15, 20, '1', 73);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, player_hp, player_mp, stat_int, lore, class_restrictions) 
VALUES (48, 0, 'Blizzard Robes', 30, 10, 1, 500, 120241, 14, 12, 10, 30, 5, '1', 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, player_hp, player_mp, stat_int, stat_str, stat_sta, stat_dex, lore)
VALUES (49, 0, 'Hair Bow', 10, 0, 1, 100, 120008, 3, 15, 10, 10, 2, 2, 2, 2, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, player_hp, player_mp, stat_str, stat_sta, lore, class_restrictions)
VALUES (50, 0, 'Cow Skull Helmet', 20, 0, 0, 200, 120030, 4, 15, 20, 10, 5, 2, '1', 51);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (51, 2, 'Dollar Bill', 0, 0, 120125, 0, 99, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, player_hp, player_mp, stat_str, stat_sta, stat_int, stat_dex, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level) 
VALUES (52, 0, 'Shirt #297741384', 20, 20, 20, 3, 3, 3, 3, 10, 1, 0, 120040, 12, 25);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_str, player_hp) 
VALUES (53, 0, 'Chicken Leg', 23, 2, 4, 0, 120012, 2, 4, 20, 10, 10, 20);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (54, 2, 'Taco', 0, 0, 120108, 0, 99, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_str, player_hp, class_restrictions, lore) 
VALUES (55, 0, 'Encased Blade of Wet', 90, 2, 5, 5000, 120213, 19, 4, 45, 50, 30, 100, 55, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_str, stat_dex, player_hp, class_restrictions, lore) 
VALUES (56, 0, 'Encased Claw of Wet', 77, 2, 5, 5000, 120050, 15, 1, 45, 25, 10, 25, 75, 51, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_int, player_hp, player_mp, class_restrictions, lore) 
VALUES (57, 0, 'Staff of Frozen Rain', 35, 3, 7, 0, 120228, 29, 3, 40, 10, 25, 30, 100, 15, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (58, 2, 'Gem of Power', 0, 0, 120502, 0, 99, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, graphic_tile, graphic_equip) 
VALUES (59, 3, 'Scroll: Snowman Illusion', 0, 0, 29, 200, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (60, 2, 'Ruby', 0, 0, 120401, 0, 5, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (61, 3, 'Scroll: Healing 2', 0, 0, 30, 1100, 31, 11, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (62, 3, 'Scroll: Healing 3', 0, 0, 31, 2100, 31, 21, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (63, 3, 'Scroll: Healing 4', 0, 0, 32, 3100, 31, 31, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (64, 3, 'Scroll: Healing 5', 0, 0, 33, 1000, 31, 41, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (65, 3, 'Scroll: Fortify 2', 0, 0, 34, 1600, 31, 16, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (66, 3, 'Scroll: Fortify 3', 0, 0, 35, 2600, 31, 26, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (67, 3, 'Scroll: Fortify 4', 0, 0, 36, 3600, 31, 36, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (68, 3, 'Scroll: Fortify 5', 0, 0, 37, 1000, 31, 46, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (69, 3, 'Scroll: Strength 1', 0, 0, 38, 900, 31, 9, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (70, 3, 'Scroll: Strength 2', 0, 0, 39, 1900, 31, 19, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (71, 3, 'Scroll: Strength 3', 0, 0, 40, 2900, 31, 29, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (72, 3, 'Scroll: Strength 4', 0, 0, 41, 1000, 31, 39, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (73, 3, 'Scroll: Strength 5', 0, 0, 42, 1000, 31, 49, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (74, 3, 'Scroll: Stamina 1', 0, 0, 43, 1200, 31, 12, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (75, 3, 'Scroll: Stamina 2', 0, 0, 44, 2200, 31, 22, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (76, 3, 'Scroll: Stamina 3', 0, 0, 45, 3200, 31, 32, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (77, 3, 'Scroll: Stamina 4', 0, 0, 46, 1000, 31, 42, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (78, 3, 'Scroll: Intelligence 1', 0, 0, 47, 2500, 31, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (79, 3, 'Scroll: Intelligence 2', 0, 0, 48, 3500, 31, 35, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (80, 3, 'Scroll: Dexterity 1', 0, 0, 49, 1000, 31, 37, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (81, 3, 'Scroll: Dexterity 2', 0, 0, 50, 1000, 31, 47, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (82, 3, 'Scroll: Mana Regeneration 1', 0, 0, 51, 3400, 31, 34, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (83, 3, 'Scroll: Mana Regeneration 2', 0, 0, 52, 500, 31, 48, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (84, 3, 'Scroll: See Invisible', 0, 0, 53, 1800, 31, 18, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (85, 3, 'Scroll: Sacrifice', 0, 0, 54, 3400, 31, 50, '1', 120110, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (86, 3, 'Rune: Fearsome Lash', 0, 0, 55, 0, 59, 50, '1', 120144, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (87, 3, 'Rune: Sunder of Spirits', 0, 0, 56, 0, 55, 50, '1', 120145, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (88, 1, 'Hair Dye: Black', 15, 0, 100, 121122, 0, 99, 65, 0, 0, 0, 180);
	
/* Helmets */
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (89, 0, 'Bronze Helmet', 0, 3, 13, 0, 0, 120018, 1, 18, 51, 800, 20, 65, 30, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (90, 0, 'Champions Helmet', 0, 3, 36, 6, 6, 0, 120023, 2, 50, 55, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (91, 0, 'Cloth Cap', 0, 1, 4, 0, 0, 0, 120018, 1, 1, 0, 200, '0', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (92, 0, 'Curious Skull Helmet', 0, 1, 77, 0, 0, 0, 120019, 1, 20, 55, 35000, '1', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (93, 0, 'Deceivers Helmet', 0, 3, 29, 6, 6, 0, 120022, 10, 50, 59, 0, '1', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_a) 
VALUES (94, 0, 'Devastators Helmet', 0, 3, 95, 15, 15, 15, 15, 100, 100, 120030, 4, 49, 51, 0, '1', '0', 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a, res_fire, res_water, res_earth, res_spirit, res_air) 
VALUES (95, 0, 'Gold Helmet', 0, 3, 100, 0, 0, 5, 5, 50, 50, 120251, 21, 50, 51, 0, '0', '0', 231, 223, 107, 160, 2, 2, 2, 2, 2);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_mp, 
	graphic_tile, graphic_equip, min_level, item_value, lore, event) 
VALUES (96, 0, 'Hays Tail', 0, 1, 15, 5, 5, 5, 5, 50, 120051, 12, 1, 0, '1', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (97, 0, 'Iron Helmet', 0, 3, 19, 0, 0, 120018, 1, 26, 51, 1200, 70, 70, 70, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions) 
VALUES (98, 0, 'Leather Cap', 0, 1, 7, 0, 0, 0, 120018, 1, 10, 400, '0', '0', 19);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (99, 0, 'Lucky Laurels', 0, 1, 50, 10, 10, 10, 10, 75, 150, 120288, 28, 1, 300000, '0', '0', 0, 24, 81, 33, 160, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (100, 0, 'Priests Crown', 0, 1, 24, 2, 2, 2, 120031, 8, 40, 31, 0, '0', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (101, 0, 'Silk Cap', 0, 1, 8, 0, 0, 0, 120033, 6, 20, 15, 800, '0', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (102, 0, 'Spicy Laurels', 0, 1, 45, 0, 0, 20, 0, 150, 0, 120288, 28, 45, 0, '1', '0', 0, 148, 48, 49, 160, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (103, 0, 'Steel Helmet', 0, 3, 25, 0, 0, 120018, 1, 34, 55, 2000, 100, 100, 100, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, spell_effect_id) 
VALUES (104, 0, 'True Ewe', 0, 1, 55, 5, 5, 5, 5, 25, 25, 120051, 24, 50, 0, 0, '1', '0', 74);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (105, 0, 'Wolfs Essence', 0, 1, 100, 5, 5, 5, 5, 100, 100, 120051, 24, 1, 0, 50000, '0', '0', 152, 88, 196, 170, 182);


/* Legs */
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (106, 0, 'Bronze Legplates', 11, 3, 20, 0, 0, 120037, 5, 18, 51, 1000, 250, 150, 50, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (107, 0, 'Champions Legplates', 11, 3, 75, 4, 4, 4, 4, 0, 120038, 2, 50, 55, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (108, 0, 'Cloth Leggings', 11, 1, 7, 0, 0, 0, 0, 0, 120029, 3, 1, 0, 250);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (109, 0, 'Gold Legplates', 11, 3, 75, 7, 7, 0, 0, 75, 120037, 2, 50, 51, 0, 231, 223, 107, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (110, 0, 'Iron Legplates', 11, 3, 29, 0, 0, 120036, 5, 26, 51, 1500);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (111, 0, 'Leather Leggings', 11, 1, 9, 0, 0, 0, 0, 0, 120029, 3, 10, 19, 500);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (112, 0, 'Lucky Legplates', 11, 3, 35, 3, 3, 0, 0, 50, 120037, 2, 1, 0, 5000, 24, 81, 33, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (113, 0, 'Silk Leggings', 11, 1, 15, 0, 0, 0, 0, 0, 120029, 3, 20, 15, 1000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (114, 0, 'Steel Legplates', 11, 3, 40, 0, 0, 120036, 5, 34, 55, 2500, 255, 255, 255, 70);


/* Shields */
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore) 
VALUES (115, 0, 'Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 45, 25, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore, class_restrictions) 
VALUES (116, 0, 'Fiber Buckler', 0, 1, 0, 2000, 120258, 41, 4, 20, 30, '0', 59);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (117, 0, 'Firebrand Buckler', 0, 1, 0, 3500, 120258, 41, 4, 35, 60, '0', 59, 189, 93, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id,
	stat_sta, stat_str, stat_int, stat_dex) 
VALUES (118, 0, 'Firebreather Shield', 0, 1, 0, 500000, 120281, 54, 4, 1, 75, 100, '0', 10, 10, 10, 10, 10, 71, 3, 3, 3, 3);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, lore, graphic_r, graphic_g, graphic_b, graphic_a, class_restrictions) 
VALUES (119, 0, 'Firebrand Guard', 0, 1, 0, 3500, 120302, 43, 4, 35, 40, 40, '0', 189, 93, 90, 160, 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, lore, graphic_r, graphic_g, graphic_b, graphic_a, class_restrictions) 
VALUES (120, 0, 'Light Guard', 0, 1, 0, 2000, 120302, 43, 4, 20, 20, 20, '0', 66, 69, 189, 160, 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore, class_restrictions) 
VALUES (121, 0, 'Kite Shield', 0, 1, 0, 2000, 120259, 42, 4, 20, 50, '0', 55);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore, class_restrictions) 
VALUES (122, 0, 'Wooden Buckler', 0, 1, 0, 500, 120258, 41, 4, 5, 10, '0', 0);


/* Shoes */
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (123, 0, 'Bronze Boots', 12, 3, 12, 0, 0, 120042, 4, 18, 51, 800, 250, 150, 50, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (124, 0, 'Cloth Shoes', 12, 1, 4, 0, 0, 120005, 1, 1, 0, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (125, 0, 'Deceivers Boots', 12, 3, 29, 3, 3, 3, 3, 0, 120041, 4, 50, 59, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_a) 
VALUES (126, 0, 'Devastators Boots', 12, 3, 50, 5, 5, 5, 5, 50, 50, 120041, 4, 49, 0, 0, '1', 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (127, 0, 'Gold Boots', 12, 3, 50, 5, 5, 0, 0, 50, 50, 120042, 2, 50, 51, 0, '0', 231, 223, 107, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (128, 0, 'Iron Boots', 12, 3, 19, 0, 0, 120041, 4, 26, 51, 1200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (129, 0, 'Leather Boots', 12, 1, 10, 0, 0, 120005, 1, 10, 19, 400);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (130, 0, 'Lucky Boots', 12, 3, 55, 2, 2, 50, 120042, 2, 1, 0, 3000, 24, 81, 33, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (131, 0, 'Silk Slippers', 12, 1, 7, 0, 0, 120005, 1, 20, 0, 800);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_sta, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (132, 0, 'Slippers of the Poo Flinger', 12, 1, 18, 5, 5, 10, 10, 50, 25, 120005, 1, 15, 0, 0, 132, 77, 49, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (133, 0, 'Steel Boots', 12, 3, 25, 0, 0, 120041, 4, 34, 55, 2000, 255, 255, 255, 70);

/* Accessories */
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id) 
VALUES (134, 0, 'Azkuros Gloves', 0, 9, 0, 0, 120210, 0, 5, 5, 5, 5, 50, 50, 1, '1', '1', 66);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air) 
VALUES (135, 0, 'Beefs Immortality', 0, 4, 0, 0, 120054, 80, 20, 20, 20, 20, 600, 600, 50, '0', '1', 3, 3, 3, 3, 3);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (136, 0, 'Beefs Protection', 0, 7, 0, 0, 110034, 60, 10, 10, 10, 10, 200, 200, 50, '0', '1', 5, 5, 5, 5, 5, 255, 255, 255, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id) 
VALUES (137, 0, 'Bracelet of Valiance', 0, 4, 0, 0, 120059, 0, 0, 0, 0, 0, 0, 0, 40, '0', '1', 0, 0, 0, 0, 0, 69);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id) 
VALUES (138, 0, 'Candy Necklace', 0, 5, 0, 700000, 120082, 0, 5, 5, 5, 5, 300, 300, 50, '1', '1', 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id) 
VALUES (139, 0, 'Divine Pauldrons', 0, 6, 0, 50000, 120278, 60, 0, 0, 6, 6, 0, 90, 0, '1', '1', 66);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air) 
VALUES (140, 0, 'Gloves of the Poo Flinger', 0, 9, 0, 0, 120209, 25, 20, 10, 5, 10, 150, 75, 40, '0', '0', 10, 10, 10, 5, 10);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, class_restrictions) 
VALUES (141, 0, 'Harvest Medallion', 0, 5, 0, 50, 121117, 0, 0, 0, 1, 0, 0, 30, 18, '0', '1', 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore) 
VALUES (142, 0, 'Leather Gloves', 0, 9, 0, 0, 120209, 5, 1, 1, 1, 1, 25, 25, 1, '0', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (143, 0, 'Lucky Necklace', 0, 5, 0, 800000, 120082, 50, 5, 5, 5, 5, 50, 50, 1, '0', '0', 24, 81, 33, 160, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id) 
VALUES (144, 0, 'Ring of Valiance', 0, 4, 0, 0, 120061, 0, 0, 0, 0, 0, 0, 0, 40, '0', '1', 0, 0, 0, 0, 0, 67);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air) 
VALUES (145, 0, 'Savage Belt', 0, 8, 0, 0, 120093, 50, 5, 5, 5, 5, 25, 25, 50, '0', '0', 0, 0, 0, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air) 
VALUES (146, 0, 'Dragon Scale Belt', 0, 8, 0, 0, 120096, 40, 5, 0, 15, 15, 0, 0, 43, '0', '1', 0, 0, 0, 0, 0);


/* Chest */
INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, player_hp, player_mp, stat_dex, lore, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (147, 0, 'Blushing Coat', 35, 10, 1, 75000, 120010, 14, 30, 0, 0, 16, '1', 37, 255, 128, 255, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (148, 0, 'Bronze Chestplate', 10, 3, 35, 0, 0, 120011, 10, 18, 51, 2000, 250, 150, 50, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (149, 0, 'Champions Chestplate', 10, 3, 100, 8, 8, 4, 0, 120034, 10, 50, 55, 0, 66, 69, 189, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (150, 0, 'Cloth Tunic', 10, 1, 10, 0, 0, 0, 0, 120003, 1, 1, 0, 400);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore) 
VALUES (151, 0, 'Devastators Robes', 10, 1, 150, 15, 15, 50, 200, 120009, 13, 49, 15, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (152, 0, 'Gold Chestplate', 10, 3, 250, 15, 15, 10, 150, 120246, 21, 50, 51, 0, 231, 223, 107, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, stat_int, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (153, 0, 'High Priests Tunic', 10, 1, 70, 5, 5, 5, 5, 0, 120025, 11, 50, 31, 0, 49, 65, 148, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (154, 0, 'Iron Chestplate', 10, 3, 40, 0, 0, 120011, 10, 26, 51, 3500);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (155, 0, 'Leather Tunic', 10, 1, 15, 0, 0, 0, 0, 120003, 1, 10, 19, 1000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (156, 0, 'Lucky Robes', 10, 1, 80, 5, 5, 5, 5, 50, 50, 120255, 23, 1, 0, 1000, 24, 81, 33, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (157, 0, 'Lucky Chestplate', 10, 1, 75, 5, 5, 5, 5, 100, 25, 120246, 21, 1, 0, 2000, 24, 81, 33, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore) 
VALUES (158, 0, 'Silk Tunic', 10, 1, 20, 0, 0, 0, 0, 120002, 2, 20, 15, 2000, '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (159, 0, 'Steel Chestplate', 10, 3, 60, 0, 0, 120011, 10, 34, 55, 5000, 255, 255, 255, 70);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (160, 0, 'Thick Skin of the Boar', 10, 3, 60, 6, 6, 6, 6, 0, 120011, 10, 20, 0, 1000, 123, 48, 123, 160, 73);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (161, 0, 'Tunic of the Poo Flinger', 10, 1, 125, 25, 25, 25, 25, 300, 300, 120025, 11, 25, 0, 0, '1', '1', 132, 77, 49, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_dex, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (162, 0, 'Whirling Robes', 10, 1, 190, 30, 5, 5, 80, 300, 120002, 2, 50, 15, 0, '1', 82, 138, 156, 190);


/* Additions */
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_sta, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, lore) 
VALUES (163, 0, 'Leggings of the Poo Flinger', 11, 1, 75, 15, 15, 15, 15, 150, 150, 120029, 3, 25, 0, 0, 132, 77, 49, 160, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (164, 0, 'Champions Boots', 12, 3, 25, 3, 3, 0, 3, 50, 120043, 2, 50, 55, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (165, 0, 'Deceivers Legplates', 11, 3, 35, 5, 5, 0, 5, 75, 120036, 5, 50, 59, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_a) 
VALUES (166, 0, 'Devastators Legplates', 11, 3, 100, 10, 10, 10, 10, 75, 75, 120036, 5, 49, 0, 0, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_a) 
VALUES (167, 0, 'Devastators Chestplate', 10, 3, 200, 15, 15, 15, 150, 120246, 21, 49, 51, 0, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (168, 0, 'Deceivers Chestplate', 10, 3, 55, 10, 10, 10, 100, 120011, 10, 50, 59, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (169, 1, 'Hair Dye: Red', 15, 0, 100, 121122, 0, 99, 85, 155, 0, 0, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (170, 1, 'Hair Dye: Blue', 15, 0, 100, 121122, 0, 99, 86, 0, 0, 155, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (171, 1, 'Hair Dye: Grey', 15, 0, 100, 121122, 0, 99, 87, 0, 0, 0, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (172, 1, 'Hair Cut: 1', 15, 0, 1000, 121104, 0, 1, 88);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (173, 1, 'Hair Cut: 2', 15, 0, 1000, 121104, 0, 1, 89);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (174, 1, 'Hair Cut: 3', 15, 0, 1000, 121104, 0, 1, 90);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (175, 1, 'Hair Cut: 4', 15, 0, 1000, 121104, 0, 1, 91);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (176, 1, 'Hair Cut: 5', 15, 0, 1000, 121104, 0, 1, 92);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (177, 1, 'Hair Cut: 6', 15, 0, 1000, 121104, 0, 1, 93);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (178, 1, 'Hair Cut: 7', 15, 0, 1000, 121104, 0, 1, 94);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (179, 1, 'Face: 1', 15, 0, 1000, 121103, 0, 1, 95);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (180, 1, 'Face: 2', 15, 0, 1000, 121103, 0, 1, 96);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (181, 1, 'Face: 3', 15, 0, 1000, 121103, 0, 1, 97);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (182, 1, 'Face: 4', 15, 0, 1000, 121103, 0, 1, 98);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (183, 1, 'Sexchange: Male', 15, 0, 1000, 120711, 0, 1, 99);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (184, 1, 'Sexchange: Female', 15, 0, 1000, 121104, 0, 1, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (185, 3, 'Scroll: Arcane Shield 2', 0, 0, 57, 1700, 47, 17, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (186, 3, 'Scroll: Group Elemental Shield 1', 0, 0, 58, 1500, 47, 12, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (187, 3, 'Scroll: Invisibility', 0, 0, 59, 2800, 47, 28, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (188, 3, 'Scroll: Elemental Strike 7', 0, 0, 60, 3100, 47, 31, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (189, 3, 'Scroll: Elemental Shield 2', 0, 0, 61, 3200, 47, 32, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (190, 3, 'Scroll: Group Elemental Shield 2', 0, 0, 62, 4000, 47, 32, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (191, 3, 'Scroll: Regeneration 2', 0, 0, 63, 3300, 47, 33, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (192, 3, 'Scroll: Bind Other', 0, 0, 64, 3300, 47, 33, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (193, 3, 'Scroll: Otherlands Teleport', 0, 0, 65, 3400, 47, 34, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (194, 3, 'Scroll: Group Otherlands Teleport', 0, 0, 66, 3500, 47, 35, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (195, 3, 'Scroll: Elemental Strike 8', 0, 0, 67, 3600, 47, 36, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (196, 3, 'Scroll: Arcane Shield 4', 0, 0, 68, 3700, 47, 37, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (197, 3, 'Scroll: Elemental Strike 9', 0, 0, 69, 4100, 47, 41, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (198, 3, 'Scroll: Regeneration 3', 0, 0, 70, 4300, 47, 43, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (199, 3, 'Scroll: Elemental Strike 10', 0, 0, 71, 4600, 47, 46, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (200, 3, 'Scroll: Arcane Shield 5', 0, 0, 72, 4700, 47, 47, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (201, 3, 'Scroll: Arcane Shield 3', 0, 0, 73, 2700, 47, 27, '1', 120110, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta) 
VALUES (202, 0, 'Bastard Sword', 40, 2, 5, 2700, 120015, 4, 4, 55, '0', 27, 5, 2);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta) 
VALUES (203, 0, 'Brilliant Hammer', 19, 2, 5, 2700, 120039, 8, 4, 31, '0', 27, 5, 2);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (204, 0, 'Contraband Dagger', 33, 2, 6, 25000, 120704, 35, 4, 59, '1', 25, 2, 4, 4, 50, 10);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (205, 0, 'Deceivers Dagger', 85, 2, 6, 0, 120047, 11, 4, 59, '0', 50, 5, 5, 10, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, stat_str, stat_sta, stat_dex, player_hp, spell_effect_id) 
VALUES (206, 0, 'Devastating Dragon Tooth Sword', 120, 2, 5, 0, 120242, 39, 4, 55, '1', 50, 0, 10, 10, 10, 100, 115);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (207, 0, 'Elemental Stave', 35, 3, 8, 0, 120017, 3, 3, 47, '1', 50, 10, 5, 10, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta) 
VALUES (208, 0, 'High Quality Walde', 48, 2, 5, 1500, 120263, 46, 4, 55, '0', 35, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, stat_str, player_hp, player_mp) 
VALUES (209, 0, 'Lucky Spear', 100, 3, 9, 20000, 120264, 45, 3, 0, '0', 1, 5, 5, 5, 5, 250, 50);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_int, stat_sta, stat_dex, player_hp, player_mp, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (210, 0, 'Lucky Staff', 50, 3, 7, 1000, 120228, 29, 3, 0, '0', 1, 5, 5, 5, 5, 5, 50, 24, 81, 33, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_dex) 
VALUES (211, 0, 'Malignant Dagger', 34, 2, 6, 2700, 120013, 1, 4, 59, '0', 27, 2, 5);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta) 
VALUES (212, 0, 'Priests Hammer', 34, 2, 5, 0, 120049, 13, 4, 31, '0', 40, 7, 5);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, stat_str, player_hp, player_mp, stat_ac) 
VALUES (213, 0, 'Scythe', 35 , 3, 8, 0, 120044, 10, 3, 0, '1', 30, 4, 4, 4, 4, 20, 20, 10);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_dex, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (214, 0, 'Searing Whip', 40, 2, 5, 0, 120052, 16, 4, 0, '0', 25, 20, 0, 115, 81, 33, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (215, 0, 'Thicket Stave', 21, 3, 8, 2700, 120021, 5, 3, 47, '0', 27, 5, 0, 2, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, player_hp, player_mp, stat_ac) 
VALUES (216, 0, 'Devastating Birch Wood Staff', 42, 3, 7, 0, 120227, 28, 3, 15, '1', 50, 20, 10, 5, 50, 500, 50);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, player_hp, player_mp, stat_str, stat_sta, stat_dex, stat_int) 
VALUES (217, 0, 'Tiny Club', 80, 2, 4, 10000, 120014, 6, 4, 50, 30, 10, 10, 5, 5, 7);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (218, 0, 'Frays Cane', 18, 3, 7, 0, 120244, 40, 3, 15, '1', 50, 25, 10, 5, 0, 125);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (219, 0, 'Nagan Sword', 70, 2, 5, 1500, 120015, 4, 4, 55, '1', 33, 15, 5, 2, 107, 73, 107, 120);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_sta, stat_str, stat_dex, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (220, 0, 'Nagan Dagger', 63, 2, 6, 1500, 120013, 1, 4, 59, '1', 33, 3, 8, 10, 107, 73, 107, 120);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, player_hp, player_mp, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (221, 0, 'Nagan Stave', 22, 3, 8, 0, 120017, 3, 3, 47, '1', 30, 10, 5, 2, 25, 100, 107, 73, 107, 160);	
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, res_fire, lore, class_restrictions,
	graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (222, 0, 'Firebrand Shield', 0, 1, 0, 3500, 120259, 42, 4, 35, 100, 5, '0', 55, 150, 0, 0, 140);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, stat_ac, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip) 
VALUES (223, 0, 'Peasant Dress', 10, 10, 1, 100, 120027, 6);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (224, 0, 'Priests Leggings', 11, 1, 25, 3, 3, 3, 3, 25, 50, 120001, 1, 40, 31, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_dex, stat_sta, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (225, 0, 'Priests Shoes', 12, 1, 15, 0, 3, 0, 2, 30, 120005, 1, 40, 31, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (226, 0, 'Priests Tunic', 10, 1, 30, 0, 4, 5, 50, 50, 120026, 7, 40, 31, 0, 49, 65, 148, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (227, 0, 'Magus Leggings', 11, 1, 20, 0, 0, 5, 0, 25, 50, 120000, 6, 40, 47, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_dex, stat_sta, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (228, 0, 'Magus Shoes', 12, 1, 15, 0, 4, 0, 2, 30, 120007, 5, 40, 47, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (229, 0, 'Magus Tunic', 10, 1, 25, 0, 0, 10, 75, 25, 120025, 11, 40, 47, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (230, 0, 'Magus Crown', 0, 1, 20, 0, 2, 5, 120032, 5, 40, 47, 0, '0', '0');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (231, 0, 'Warriors Helmet', 0, 3, 28, 4, 4, 0, 120023, 2, 40, 55, 0, '0', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (232, 0, 'Warriors Legplates', 11, 3, 50, 3, 3, 3, 3, 75, 120038, 2, 40, 55, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (233, 0, 'Warriors Boots', 12, 3, 18, 2, 2, 0, 2, 30, 120043, 2, 40, 55, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (234, 0, 'Warriors Chestplate', 10, 3, 75, 5, 5, 3, 0, 120034, 10, 40, 55, 0, 66, 69, 189, 120);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (235, 0, 'Rogues Helmet', 0, 3, 19, 3, 4, 40, 120022, 10, 40, 59, 0, '0', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (236, 0, 'Rogues Legplates', 11, 3, 25, 3, 4, 0, 3, 50, 120036, 5, 40, 59, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (237, 0, 'Rogues Boots', 12, 3, 19, 2, 2, 2, 2, 0, 120041, 4, 40, 59, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (238, 0, 'Rogues Chestplate', 10, 3, 40, 7, 7, 7, 70, 120011, 10, 40, 59, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (239, 0, 'High Priests Leggings', 11, 1, 35, 5, 5, 5, 5, 50, 80, 120001, 1, 50, 31, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_dex, stat_sta, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (240, 0, 'High Priests Shoes', 12, 1, 20, 0, 4, 0, 3, 50, 120005, 1, 50, 31, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (241, 0, 'High Priests Crown', 0, 1, 35, 4, 4, 4, 120031, 8, 50, 31, 0, '1', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (242, 0, 'High Priests Tunic', 10, 1, 45, 0, 6, 8, 100, 75, 120026, 7, 50, 31, 0, 49, 65, 148, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (243, 0, 'Elemental Leggings', 11, 1, 30, 0, 0, 8, 0, 35, 100, 120000, 6, 50, 47, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_dex, stat_sta, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (244, 0, 'Elemental Shoes', 12, 1, 20, 0, 6, 0, 3, 40, 120007, 5, 50, 47, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (245, 0, 'Elemental Tunic', 10, 1, 40, 0, 0, 15, 125, 40, 120025, 11, 50, 47, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (246, 0, 'Elemental Crown', 0, 1, 30, 0, 3, 8, 120032, 5, 50, 47, 0, '1', '0');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (247, 0, 'Whirling Leggings', 11, 1, 75, 0, 3, 15, 0, 25, 120, 120000, 3, 50, 15, 0, 82, 138, 156, 190);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_dex, stat_sta, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (248, 0, 'Whirling Slippers', 12, 1, 35, 0, 9, 0, 5, 75, 120005, 1, 50, 15, 0, 82, 138, 156, 190);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (249, 0, 'Whirling Hat', 0, 1, 55, 0, 5, 13, 120033, 6, 50, 15, 0, '1', '0', 82, 138, 156, 190);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_dex, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (250, 0, 'Nagan Robes', 10, 1, 75, 20, 0, 3, 25, 200, 120002, 2, 50, 15, 0, '1', 0, 128, 0, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, player_hp, player_mp, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id,
	bindonequip, bindonpickup) 
VALUES (251, 0, 'Coral Sword', 50, 2, 5, 0, 120272, 51, 4, 0, '1', 50, 125, 125, 185, 40, 29, 160, 76, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, stat_str, stat_sta, stat_dex, player_hp, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (252, 0, 'Devastating Dagger of the Fox', 100, 2, 5, 0, 120211, 27, 4, 59, '1', 50, 0, 5, 7, 15, 100, 115, 231, 223, 107, 130);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta) 
VALUES (253, 0, 'Champions Blade', 110, 2, 5, 0, 120046, 12, 4, 55, '1', 50, 25, 10);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore) 
VALUES (254, 0, 'Cold Beaten Sleeves', 0, 6, 0, 0, 120233, 20, 0, 0, 0, 0, 20, 20, 20, '0', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air) 
VALUES (255, 0, 'Spiked Belt of the Bunny', 0, 8, 0, 0, 120205, 10, 3, 3, 3, 3, 25, 15, 20, '0', '0', 0, 0, 0, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, stat_int, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (256, 0, 'Shirt of the Fallen Loser', 10, 1, 35, 2, 2, 2, 2, 25, 120040, 3, 20, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (257, 0, 'Hays Claw', 90, 2, 6, 0, 120050, 15, 1, 51, '1', 50, 5, 4, 9, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (258, 0, 'Bear Claw', 65, 2, 6, 0, 120050, 14, 4, 15, '1', 50, 3, 3, 7, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (259, 0, 'Rusty Claw', 80, 2, 6, 0, 120050, 14, 4, 51, '1', 40, 3, 2, 3, 50, 50);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (260, 0, 'Frays Flippers', 12, 1, 30, 5, 5, 5, 50, 100, 120229, 6, 0, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, player_hp, player_mp, stat_str, stat_sta, stat_dex, stat_int) 
VALUES (261, 0, 'Beefs Fist', 100, 2, 4, 0, 120014, 0, 1, 50, 300, 300, 20, 10, 10, 10);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (262, 2, 'Lesser Essence of Earth', 0, 0, 120500, 0, 10, 0, '0', 128, 0, 0, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (263, 2, 'Lesser Essence of Water', 0, 0, 120500, 0, 10, 0, '0', 0, 128, 255, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (264, 2, 'Lesser Essence of Fire', 0, 0, 120500, 0, 10, 0, '0', 255, 0, 0, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (265, 2, 'Lesser Essence of Air', 0, 0, 120500, 0, 10, 0, '0', 255, 255, 255, 130);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (266, 2, 'Key to the Ancients Dungeon', 0, 0, 120171, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_a) 
VALUES (267, 2, 'Unadorned Coral', 0, 0, 120501, 0, 1, 0, '1', 180, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore) 
VALUES (268, 2, 'Present 1', 0, 0, 120102, 0, 1, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore) 
VALUES (269, 2, 'Present 2', 0, 0, 120103, 0, 1, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore) 
VALUES (270, 2, 'Present 3', 0, 0, 120104, 0, 1, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore) 
VALUES (271, 2, 'Present 4', 0, 0, 120105, 0, 1, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (272, 3, 'Scroll: Covenant', 0, 0, 88, 0, 47, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (273, 3, 'Scroll: Arcane Blast', 0, 0, 89, 0, 47, 50, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (274, 3, 'Rune: Arcane Assault', 0, 0, 90, 0, 47, 50, '1', 120146, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (275, 3, 'Scroll: Spirit Strike', 0, 0, 91, 0, 55, 50, '1', 120110, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (276, 3, 'Scroll: Critical Strike', 0, 0, 92, 0, 59, 50, '1', 120110, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (277, 3, 'Scroll: Rejuvination', 0, 0, 93, 2600, 31, 50, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (278, 3, 'Rune: Restore Health', 0, 0, 94, 0, 31, 50, '1', 120147, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id)
VALUES (279, 1, 'Teleport: Minita', 15, 0, 1000, 120118, 0, 99, 12);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id)
VALUES (280, 1, 'Teleport: Bound', 15, 0, 1000, 120118, 0, 99, 17);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, min_level)
VALUES (281, 1, 'Teleport: Otherlands', 15, 0, 1000, 120118, 0, 99, 107, 30);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience) 
VALUES (282, 0, 'Ancient Moon Wand', 80, 2, 5, 0, 120243, 38, 4, 50, 5, 15, 250, 1000, 15, '1', '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (283, 0, 'Ancient Garb', 10, 1, 200, 10, 250, 1750, 120706, 20, 50, 15, 0, '1', 150, 40, 40, 150, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (284, 0, 'Ancient Robe', 10, 1, 200, 20, 650, 1000, 120254, 23, 50, 15, 0, '1', 150, 40, 40, 150, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore) 
VALUES (285, 0, 'Snake Tiara', 0, 1, 45, 8, 10, 525, 375, 121000, 26, 50, 1, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore) 
VALUES (286, 0, 'Snake Helm', 0, 1, 100, 8, 10, 525, 375, 121001, 25, 50, 1, 0, '1');
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience) 
VALUES (287, 0, 'Cloak of Power', 7, 0, 0, 110034, 0, 50, 30, 5, 5, 5, 5, 250, 250, '1', 71, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience) 
VALUES (288, 0, 'Pauldrons of Power', 6, 0, 0, 120278, 0, 50, 75, 5, 5, 5, 5, 250, 250, '1', 71, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience) 
VALUES (289, 0, 'Belt of Power', 8, 0, 0, 120093, 0, 50, 60, 10, 10, 10, 10, 250, 250, '1', 73, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (290, 0, 'Ancient Armor', 10, 1, 375, 5, 15, 1750, 300, 120245, 21, 50, 51, 0, '1', 255, 0, 0, 77, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_str, player_hp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id) 
VALUES (291, 0, 'Ancient Axe', 150, 2, 5, 0, 120282, 55, 4, 50, 25, 20, 15, 1250, 55, '1', '1', 20000000, 162);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id) 
VALUES (292, 0, 'Ancient Dagger', 120, 2, 5, 0, 120266, 49, 4, 50, 10, 10, 50, 600, 600, 59, '1', '1', 20000000, 162);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_int, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (293, 0, 'Magus Ancient Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 150, 20, 600, '1', 90, 200, 40, 150, '1', 20000000, 71, 47);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (294, 0, 'Priests Ancient Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 150, 5, 15, 100, 500, '1', 40, 160, 200, 130, '1', 20000000, 77, 31);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (295, 0, 'Rogues Ancient Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 150, 10, 10, 25, 300, 300, '1', 20, 70, 130, 150, '1', 20000000, 77, 59);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, player_hp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (296, 0, 'Warriors Ancient Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 250, 20, 600, '1', 180, 60, 25, 130, '1', 20000000, 140, 55);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (297, 2, 'Essence of Earth', 0, 0, 120500, 0, 10, 0, '0', 128, 0, 0, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (298, 2, 'Essence of Water', 0, 0, 120500, 0, 10, 0, '0', 0, 128, 255, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (299, 2, 'Essence of Fire', 0, 0, 120500, 0, 10, 0, '0', 255, 0, 0, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (300, 2, 'Essence of Air', 0, 0, 120500, 0, 10, 0, '0', 255, 255, 255, 130);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, min_level)
VALUES (301, 1, 'Teleport: Paradise', 15, 0, 75, 120118, 0, 99, 141, 50);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (302, 3, 'Scroll: Group Teleport Paradise', 0, 0, 95, 0, 47, 50, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (303, 2, 'Design: Ancient Shield', 0, 0, 121102, 0, 1, 0, '1', '1');
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip) 
VALUES (304, 0, 'Bracelet of Fire', 0, 4, 0, 0, 120070, 10, 10, 10, 10, 10, 100, 100, 50, '1', 50, 0, 0, 0, 0, 20000000, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip) 
VALUES (305, 0, 'Bracelet of Earth', 0, 4, 0, 0, 120072, 10, 10, 10, 10, 10, 100, 100, 50, '1', 0, 0, 50, 0, 0, 20000000, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip) 
VALUES (306, 0, 'Bracelet of Air', 0, 4, 0, 0, 120074, 10, 10, 10, 10, 10, 100, 100, 50, '1', 0, 0, 0, 0, 50, 20000000, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip) 
VALUES (307, 0, 'Bracelet of Water', 0, 4, 0, 0, 120076, 10, 10, 10, 10, 10, 100, 100, 50, '1', 0, 50, 0, 0, 0, 20000000, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip) 
VALUES (308, 0, 'Bracelet of Spirit', 0, 4, 0, 0, 120079, 10, 10, 10, 10, 10, 100, 100, 50, '1', 0, 0, 0, 50, 0, 20000000, '1');
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac,lore, class_restrictions,
	graphic_r, graphic_g, graphic_b, graphic_a, player_hp, player_mp) 
VALUES (309, 0, 'Earthbrand Shield', 0, 1, 0, 20000, 120259, 42, 4, 50, 150,'0', 55, 20, 150, 20, 150,240,0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, 
	player_hp, player_mp) 
VALUES (310, 0, 'Earthbrand Buckler', 0, 1, 0, 20000, 120258, 41, 4, 50, 90, '0', 59, 20, 150, 20, 150,120,120);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore, graphic_r, graphic_g, graphic_b, graphic_a, 
	class_restrictions, player_hp, player_mp) 
VALUES (311, 0, 'Earthbrand Guard', 0, 1, 0, 20000, 120302, 43, 4, 50, 70, '0', 20, 150, 20, 150, 15,60,180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_dex, stat_int, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (312, 0, 'Nagan Armor', 10, 1, 150, 20, 0, 3, 25, 200, 120011, 10, 50, 51, 0, '1', 0, 128, 0, 100);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (313, 3, 'Scroll: Ancient Healing', 0, 0, 96, 0, 31, 50, '1', 120110, 0, '1', 20000000);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (314, 3, 'Scroll: Ancient Root', 0, 0, 97, 0, 47, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (315, 3, 'Scroll: Ancient Sturdiness', 0, 0, 98, 0, 47, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (316, 3, 'Scroll: Ancient Criticality', 0, 0, 99, 0, 59, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (317, 3, 'Scroll: Ancient Augmentation', 0, 0, 100, 0, 55, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (318, 3, 'Scroll: Ancient Protection', 0, 0, 101, 0, 31, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (319, 3, 'Scroll: Ancient Buffiness', 0, 0, 102, 0, 47, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (320, 3, 'Scroll: Ancient Damage', 0, 0, 103, 0, 59, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (321, 3, 'Scroll: Ancient Taunt', 0, 0, 104, 0, 55, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (322, 3, 'Scroll: Ancient Sacrifice', 0, 0, 105, 0, 31, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (323, 3, 'Scroll: Smokebomb', 0, 0, 106, 0, 59, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (324, 3, 'Scroll: Group Heal', 0, 0, 107, 0, 31, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (325, 3, 'Scroll: Warrior Root', 0, 0, 108, 0, 55, 25, '1', 120110, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (326, 1, 'Hair Dye: Lime Green', 15, 0, 0, 121122, 0, 99, 156, 40, 255, 0, 160);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (327, 1, 'Hair Dye: Zelius'' Dye', 15, 0, 0, 121122, 0, 99, 157, 255, 255, 255, 180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (328, 2, 'Blank Scroll', 0, 0, 120110, 0, 10, 50);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        learn_spell_id, item_value, class_restrictions, min_level, lore,
        graphic_tile, graphic_equip) 
VALUES (329, 3, 'Scroll: Bat Illusion', 0, 0, 119, 0, 0, 10, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (330, 2, 'Flint', 0, 0, 120402, 0, 1, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (331, 2, 'Bonfire', 0, 0, 121100, 0, 1, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (332, 2, 'Chisel', 0, 0, 121137, 0, 5, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore) 
VALUES (333, 2, 'Garlic', 0, 0, 121111, 0, 1, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (334, 2, 'High Quality Blade', 0, 0, 121139, 0, 10, 500);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (335, 2, 'High Quality Hilt', 0, 0, 121140, 0, 10, 400);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (336, 2, 'Medium Quality Blade', 0, 0, 121139, 0, 10, 250);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (337, 2, 'Medium Quality Hilt', 0, 0, 121140, 0, 10, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (338, 2, 'Low Quality Blade', 0, 0, 121139, 0, 10, 125);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (339, 2, 'Low Quality Hilt', 0, 0, 121140, 0, 10, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (340, 2, 'Needle', 0, 0, 121126, 0, 5, 175);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (341, 2, 'Ink', 0, 0, 121141, 0, 5, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (342, 2, 'Liquid Ore', 0, 0, 121136, 0, 10, 500);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (343, 2, 'Pearl', 0, 0, 120400, 0, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (344, 2, 'Rope', 0, 0, 121124, 0, 5, 50);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore) 
VALUES (345, 2, 'Sharp Scissors', 0, 0, 121104, 0, 1, 250, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (346, 2, 'Shirt Pattern', 0, 0, 120241, 0, 1, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (347, 2, 'Spool of Thread', 0, 0, 121133, 0, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (348, 2, 'Spool of Blue Thread', 0, 0, 121132, 0, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (349, 2, 'Spool of Green Thread', 0, 0, 121131, 0, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (350, 2, 'Spool of Red Thread', 0, 0, 121130, 0, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (351, 2, 'Spool of Black Thread', 0, 0, 121129, 0, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (352, 2, 'Spool of Pink Thread', 0, 0, 121128, 0, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (353, 2, 'Spool of Purple Thread', 0, 0, 121127, 0, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (354, 2, 'Unrefined Ore', 0, 0, 120504, 0, 5, 500);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (355, 2, 'Cats Hair', 0, 0, 121124, 0, 1, 20);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        learn_spell_id, item_value, class_restrictions, min_level, lore,
        graphic_tile, graphic_equip) 
VALUES (356, 3, 'Scroll: Shroom Illusion', 0, 0, 120, 0, 0, 15, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore) 
VALUES (357, 0, 'Crude Pearl Ring', 0, 4, 0, 250, 120060, 15, 3, 3, 3, 3, 10, 5, 10, '0', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore) 
VALUES (358, 0, 'Crude Gold Ring', 0, 4, 0, 150, 120053, 5, 0, 0, 0, 0, 0, 0, 1, '0', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore) 
VALUES (359, 0, 'Crude Ruby Ring', 0, 4, 0, 250, 120055, 15, 3, 3, 3, 3, 10, 5, 10, '0', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore) 
VALUES (360, 0, 'Pearl Bracelet', 0, 4, 0, 0, 120078, 15, 4, 4, 4, 4, 50, 50, 10, '0', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex) 
VALUES (361, 0, 'High Quality Walde', 65, 2, 5, 1500, 120263, 46, 4, 55, '0', 35, 12, 4, 2);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta) 
VALUES (362, 0, 'Medium Quality Walde', 30, 2, 5, 1000, 120263, 46, 4, 50, '0', 20, 5, 2);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta) 
VALUES (363, 0, 'Low Quality Walde', 26, 2, 5, 1000, 120263, 46, 4, 50, '0', 13, 2, 1);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (364, 0, 'Stunnah Shades', 0, 1, 50, 10, 10, 10, 10, 75, 150, 120048, 11, 1, 0, '0', '0', 0, 0, 255, 0, 200, 71);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (365, 0, 'Powerful Valiant Helmet', 0, 3, 260, 0, 14, 14, 20, 200, 400, 120250, 21, 50, 51, 300000, '0', 27, 168, 224, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (366, 0, 'Powerful Valiant Chestplate', 10, 3, 500, 40, 40, 40, 600, 120245, 21, 50, 51, 300000, 27, 168, 224, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (367, 0, 'Powerful Valiant Legplates', 11, 3, 240, 30, 30, 30, 30, 650, 600, 120036, 5, 50, 0, 300000, 27, 168, 224, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (368, 0, 'Powerful Valiant Boots', 12, 3, 150, 20, 20, 0, 0, 300, 200, 120041, 4, 50, 0, 300000, 27, 168, 224, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type,
        stat_ac, stat_str, stat_sta, stat_int, player_hp, player_mp,
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (369, 0, 'Powerful Valiant Cap', 0, 1, 130, 0, 16, 32, 400, 200, 120033, 6, 50, 15, 300000, '0', '0', 27, 168, 224, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (370, 0, 'Powerful Valiant Robes', 10, 1, 400, 70, 20, 250, 850, 120255, 23, 50, 15, 300000, 27, 168, 224, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (371, 0, 'Powerful Valiant Mesh', 10, 3, 475, 40, 40, 40, 500, 300, 120238, 17, 50, 59, 300000, 27, 168, 224, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (372, 0, 'Powerful Valiant Stealth', 0, 3, 240, 20, 20, 40, 40, 300, 300, 120022, 2, 50, 59, 300000, '0', 27, 168, 224, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (373, 0, 'Valiant Helmet', 0, 3, 130, 0, 7, 7, 10, 100, 200, 120250, 21, 50, 51, 0, '0', 214, 214, 214, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (374, 0, 'Valiant Chestplate', 10, 3, 275, 20, 20, 20, 300, 120245, 21, 50, 51, 0, 214, 214, 214, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (375, 0, 'Valiant Legplates', 11, 3, 120, 15, 15, 15, 15, 175, 150, 120036, 5, 50, 0, 0, 214, 214, 214, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (376, 0, 'Valiant Boots', 12, 3, 75, 10, 10, 0, 0, 150, 100, 120041, 4, 50, 0, 0, 214, 214, 214, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, player_hp, player_mp,
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (377, 0, 'Valiant Cap', 0, 1, 70, 0, 8, 18, 200, 100, 120033, 6, 50, 15, 0, '0', '0', 214, 214, 214, 180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (378, 0, 'Valiant Robes', 10, 1, 200, 35, 5, 125, 425, 120255, 23, 50, 15, 0, 214, 214, 214, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (379, 0, 'Valiant Mesh', 10, 3, 235, 20, 20, 20, 250, 150, 120238, 17, 50, 59, 0, 214, 214, 214, 180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (380, 0, 'Valiant Stealth', 0, 3, 120, 10, 10, 20, 20, 150, 150, 120022, 2, 50, 59, 0, '0', 214, 214, 214, 180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id) 
VALUES (381, 0, 'Celestial Pauldrons', 0, 6, 0, 50000, 120278, 60, 0, 0, 6, 6, 90, 0, 0, '1', '1', 68);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, res_fire, res_water, res_earth, res_spirit, res_air,
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, player_hp, player_mp) 
VALUES (382, 0, 'Shades', 0, 1, 100, 10, 10, 10, 10, 10, 10, 10, 10, 10, 120048, 11, 0, 0, 40000, '0', '0', 150, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_mp, player_hp, res_fire, res_water, res_earth, res_spirit, res_air, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (383, 0, 'Battle Gown', 10, 1, 200, 20, 20, 20, 20, 200, 200, 20, 20, 20, 20, 20, 120257, 25, 1, 0, 50000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (384, 0, 'Lucky Belt', 0, 8, 0, 400000, 120093, 50, 5, 5, 5, 5, 75, 75, 0, '0', '0', 71, 24, 81, 33, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_dex, player_hp, player_mp, stat_sta, stat_int, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, event) 
VALUES (385, 0, 'Champions Sandals', 12, 1, 25, 10, 10, 125, 125, 5, 5, 120289, 3, 1, 0, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (386, 0, 'Princess Dress', 10, 1, 50, 10, 10, 100, 100, 120265, 26, 1, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (387, 0, 'Fire Angel Robe', 10, 1, 100, 10, 10, 10, 150, 150, 120296, 28, 1, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (388, 0, 'Tuxedo', 10, 1, 25, 5, 5, 100, 100, 120293, 5, 1, 0, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp, weapon_delay, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (389, 0, 'Lucky Dagger', 80, 2, 6, 30000, 120249, 37, 4, 0, '0', 0, 10, 5, 5, 125, 125, 7, 24, 81, 33, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, player_hp, player_mp, stat_ac) 
VALUES (390, 0, 'Slime Staff', 50, 3, 7, 0, 120294, 59, 3, 0, '0', 0, 10, 10, 0, 100, 100, 50);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (391, 1, 'Hair Dye: Frozen Spit', 15, 0, 0, 121122, 0, 99, 159, 164, 219, 247, 200);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (392, 1, 'Hair Dye: Fayt Dye', 15, 0, 0, 121122, 0, 99, 158, 148, 0, 0, 209);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, player_hp, player_mp, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id,
        bindonequip, bindonpickup) 
VALUES (393, 0, 'Haze''s Purple Vibrator', 50, 2, 5, 0, 120272, 60, 4, 0, '1', 50, 125, 125, 1, 1, 1, 185, 76, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, res_fire, res_water, res_earth, res_spirit, res_air, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, lore, bindonpickup) 
VALUES (394, 0, 'Doom Robe', 10, 1, 200, 20, 20, 20, 20, 20, 20, 20, 20, 20, 3000, 3000, 120285, 22, 50, 0, 0, 161, '1', '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (395, 2, 'Design: Ancient Slippers', 0, 0, 121102, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (396, 2, 'Mold: Ancient Boots', 0, 0, 121138, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (397, 2, 'Design: Divine Crown', 0, 0, 121102, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (398, 2, 'Mold: Divine Helm', 0, 0, 121138, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (399, 0, 'Dagger of Contemption', 120, 2, 5, 0, 120047, 11, 4, 50, 10, 10, 10, 500, 1000, 1, '1', '1', 0, 100, 0, 160, 162);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonpickup, spell_effect_id) 
VALUES (400, 0, 'Ward of Destruction', 0, 1, 0, 0, 120261, 43, 4, 50, 100, 700, 700, '1', 0, 0, 100, 160, '1', 164);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id) /* Rogue */
VALUES (401, 0, 'Ancient Boots', 12, 3, 100, 0, 0, 0, 50, 1000, 1000, '1', '1', '1', 120041, 4, 50, 59, 0, 76);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id) /* Warrior */
VALUES (402, 0, 'Ancient Boots', 12, 3, 100, 0, 50, 0, 0, 2000, 0, '1', '1', '1', 120043, 2, 50, 55, 0, 76);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id) /* Magus */
VALUES (403, 0, 'Ancient Slippers', 12, 3, 100, 0, 0, 25, 25, 0, 2000, '1', '1', '1', 120007, 5, 50, 47, 0, 70);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id) /* Priest */
VALUES (404, 0, 'Ancient Slippers', 12, 3, 100, 30, 20, 0, 0, 500, 1500, '1', '1', '1', 120005, 1, 50, 31, 0, 76);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id) 
VALUES (405, 0, 'Divine Helm', 0, 3, 150, 25, 25, 0, 0, 1500, 1500, 120022, 10, 50, 59, 0, '1', '1', '1', 84);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id) 
VALUES (406, 0, 'Divine Helm', 0, 3, 150, 0, 50, 0, 0, 3000, 0, 120023, 2, 50, 55, 0, '1', '1', '1', 84);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id) 
VALUES (407, 0, 'Divine Crown', 0, 3, 150, 50, 0, 0, 0, 0, 3000, 120032, 5, 50, 47, 0, '1', '1', '1', 84);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id) 
VALUES (408, 0, 'Divine Crown', 0, 3, 150, 30, 20, 0, 0, 1000, 2000, 120031, 8, 50, 31, 0, '1', '1', '1', 84);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  stat_ac, stat_str, stat_sta, stat_int, stat_dex, 
  graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, player_hp, player_mp) 
VALUES (409, 0, 'Laurels', 0, 1, 50, 20, 20, 20, 20, 120288, 28, 25, 0, 0, '1', '0', 300, 300);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_mp, player_hp, 
  graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore) 
VALUES (410, 0, 'Frilly Top', 10, 1, 50, 25, 25, 25, 25, 400, 400, 120290, 9, 25, 0, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
  graphic_tile, graphic_equip, min_level, item_value, lore) 
VALUES (411, 0, 'Frilly Skirt', 11, 3, 50, 20, 20, 20, 20, 200, 200, 120291, 4, 25, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  stat_ac, stat_str, stat_dex, player_hp, player_mp, stat_sta, stat_int, 
  graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, lore) 
VALUES (412, 0, 'Sandals', 12, 1, 50, 10, 10, 100, 100, 10, 10, 120289, 3, 25, 0, 0, 0, 0, 0, 160, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup) 
VALUES (413, 3, 'Scroll: Ancient Bellow', 0, 0, 109, 0, 55, 50, '1', 120110, 0, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup) 
VALUES (414, 3, 'Rune: Ancient Awe', 0, 0, 110, 0, 55, 50, '1', 120148, 0, '1');
 
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup) 
VALUES (415, 3, 'Rune: Ancient Conflagration', 0, 0, 112, 0, 47, 50, '1', 120150, 0, '1');
 
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup) 
VALUES (416, 3, 'Rune: Ancient Death', 0, 0, 111, 0, 59, 50, '1', 120149, 0, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  stat_ac, stat_str, stat_sta, stat_int, stat_dex, res_fire, res_water, res_earth, res_spirit, res_air,
  graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, player_hp, player_mp, spell_effect_id, bindonpickup) 
VALUES (417, 0, 'Doom Helm', 0, 1, 150, 10, 10, 10, 10, 10, 10, 10, 10, 10, 120287, 29, 50, 0, 0, '1', '0', 2000, 2000, 69, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (418, 1, 'Hair Dye: Purple Haze', 15, 0, 0, 121122, 0, 99, 169, 116, 12, 108, 145); 
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup) 
VALUES (419, 3, 'Rune: Ancient Blessings', 0, 0, 113, 0, 31, 50, '1', 120151, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (420, 3, 'Scroll: Spiritual Blessings', 0, 0, 114, 0, 31, 50, '1', 120110, 0);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, min_level, min_experience)
VALUES (421, 1, 'Teleport: Ancients Dungeon', 15, 0, 1000, 120118, 0, 99, 172, 50, 100000000);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, class_restrictions) 
VALUES (422, 0, 'Savage Pauldrons of the Boar', 6, 0, 0, 120236, 0, 50, 45, 2, 2, 2, 2, 50, 150, '1', 2, 2, 2, 2, 2, 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, class_restrictions) 
VALUES (423, 0, 'Savage Pauldrons of the Cow', 6, 0, 0, 120232, 0, 50, 60, 2, 2, 2, 2, 150, 50, '1', 2, 2, 2, 2, 2, 50);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	graphic_tile, graphic_equip, min_level, stat_ac, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, class_restrictions,
	graphic_r, graphic_a, spell_effect_id) 
VALUES (424, 0, 'Red Ring', 0, 4, 0, 120063, 0, 50, 5, 50, 50, '1', 2, 2, 2, 2, 2, 15, 200, 200, 58);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	graphic_tile, graphic_equip, min_level, stat_ac, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, class_restrictions,
	graphic_a, spell_effect_id) 
VALUES (425, 0, 'Black Ring', 0, 4, 0, 120063, 0, 50, 5, 50, 50, '1', 2, 2, 2, 2, 2, 50, 200, 80);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonpickup,
	graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (426, 0, 'Gero Robes', 10, 1, 50, 1000, 3000, 120009, 14, 50, 15, 0, '1', '1', 220, 50, 50, 140, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonpickup,
	graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (427, 0, 'Mama Chestplate', 10, 1, 400, 2000, 1000, 120011, 10, 50, 50, 0, '1', '1', 220, 50, 50, 140, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonpickup,
	graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (428, 0, 'Mama Headband', 0, 3, 150, 1500, 1500, 120022, 10, 50, 50, 0, '1', '1', 220, 50, 50, 140, 174);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonpickup,
	graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (429, 0, 'Mama Legplates', 11, 3, 150, 1000, 1500, 120036, 5, 50, 50, 0, '1', '1', 220, 50, 50, 140, 174);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonpickup,
	graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (430, 0, 'Mama Boots', 12, 3, 100, 1000, 500, 120041, 4, 50, 50, 0, '1', '1', 220, 50, 50, 140, 174);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup) 
VALUES (431, 3, 'Scroll: Sacrifice II', 0, 0, 115, 0, 31, 50, '1', 120110, 0, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup) 
VALUES (432, 3, 'Scroll: Damage of the Bear', 0, 0, 116, 0, 47, 50, '1', 120110, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup) 
VALUES (433, 3, 'Scroll: Critical Blow of the Bear', 0, 0, 117, 0, 59, 50, '1', 120110, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup) 
VALUES (434, 3, 'Scroll: Roar of the Bear', 0, 0, 118, 0, 55, 50, '1', 120110, 0, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, bindonpickup, bindonequip, spell_effect_id) 
VALUES (435, 0, 'Ducky Pauldrons', 6, 0, 0, 120232, 0, 50, 70, 10, 10, 10, 10, 300, 300, '1', 10, 10, 10, 10, 10, '1', '1', 177);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, bindonpickup) 
VALUES (436, 2, 'Priceless Needle', 0, 0, 121126, 0, 5, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, bindonpickup) 
VALUES (437, 2, 'Priceless Pattern', 0, 0, 121102, 0, 5, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, bindonpickup) 
VALUES (438, 2, 'Priceless Thread', 0, 0, 121133, 0, 5, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, bindonpickup) 
VALUES (439, 2, 'Priceless Ore', 0, 0, 120504, 0, 5, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, bindonpickup) 
VALUES (440, 2, 'Priceless Chisel', 0, 0, 121137, 0, 5, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, bindonpickup) 
VALUES (441, 2, 'Priceless Hammer', 0, 0, 120273, 0, 5, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, bindonpickup) 
VALUES (442, 2, 'Wrapping Paper', 0, 0, 150208, 0, 5, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, bindonpickup) 
VALUES (443, 2, 'Empty Box', 0, 0, 121134, 0, 5, 0, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (444, 2, 'Sketch', 0, 0, 121108, 0, 5, 500);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (445, 2, 'Soft Gold Ore', 0, 0, 121138, 0, 99, 200, 250, 200, 120, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, graphic_r, graphic_g, graphic_b, graphic_a, lore, bindonpickup) 
VALUES (446, 2, 'Gramps Fur', 0, 0, 120601, 0, 1, 0, 200, 10, 10, 120, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (447, 2, 'Blood', 0, 0, 121101, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, graphic_r, graphic_g, graphic_b, graphic_a, lore, bindonpickup) 
VALUES (448, 2, 'Berrys Hair Strand', 0, 0, 121124, 0, 1, 0, 200, 10, 10, 120, '1', '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (449, 2, 'Cloth', 0, 0, 120223, 0, 1, 200);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (450, 0, 'Cloth Shirt', 10, 1, 30, 1, 1, 1, 1, 10, 10, 120241, 4, 1, 0, 400);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_dex, stat_sta, weapon_delay) 
VALUES (451, 0, 'Practice Katana', 26, 2, 5, 1000, 120275, 53, 4, 50, '0', 10, 5, 1, 9);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp) 
VALUES (452, 0, 'Soft Belt', 8, 0, 0, 120096, 0, 10, 5, 1, 1, 1, 1, 10, 10);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level) 
VALUES (453, 0, 'Cat Ears', 0, 0, 30, 4, 30, 30, 120221, 23, 15);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, graphic_a) 
VALUES (454, 0, 'Black Cat Ears', 0, 0, 30, 4, 30, 30, 120221, 23, 15, 170);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value) 
VALUES (455, 2, 'Leather Padding', 0, 0, 120605, 0, 99, 100);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
	min_level, stat_sta, stat_str, stat_dex, player_hp, player_mp, weapon_delay) 
VALUES (456, 0, 'Fighting Katana', 63, 2, 6, 1500, 120276, 52, 4, 50, '1', 30, 3, 12, 10, 50, 50, 9);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, graphic_r, graphic_a) 
VALUES (457, 2, 'Red Rope', 0, 0, 121124, 0, 5, 500, 160, 160);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id, bindonpickup) 
VALUES (458, 0, 'Gero Necklace', 0, 5, 0, 0, 120601, '1', 200, 10, 10, 120, 185, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (459, 1, 'Shard of Earth', 0, 0, 120500, 0, 1, 0, '0', 128, 0, 0, 125, 50, 186);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (460, 1, 'Shard of Water', 0, 0, 120500, 0, 1, 0, '0', 0, 128, 255, 125, 50, 197);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (461, 1, 'Shard of Fire', 0, 0, 120500, 0, 1, 0, '0', 255, 0, 0, 130, 50, 195);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (462, 1, 'Shard of Air', 0, 0, 120500, 0, 1, 0, '0', 255, 255, 255, 110, 50, 198);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (463, 1, 'Shard of Death', 0, 0, 120500, 0, 1, 0, '0', 20, 20, 20, 130, 50, 196);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (464, 1, 'Shard of Strength', 0, 0, 120500, 0, 1, 0, '0', 64, 0, 0, 130, 50, 187);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (465, 1, 'Shard of Love', 0, 0, 120500, 0, 1, 0, '0', 255, 100, 255, 100, 50, 188);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (466, 1, 'Shard of Life', 0, 0, 120500, 0, 1, 0, '0', 0, 255, 0, 100, 50, 189);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (467, 1, 'Shard of Hope', 0, 0, 120500, 0, 1, 0, '0', 250, 110, 30, 115, 50, 193);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (468, 1, 'Shard of Divinity', 0, 0, 120500, 0, 1, 0, '0', 255, 255, 255, 150, 50, 194);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (469, 1, 'Shard of Power', 0, 0, 120500, 0, 1, 0, '0', 255, 0, 0, 150, 50, 191);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (470, 1, 'Shard of Protection', 0, 0, 120500, 0, 1, 0, '0', 0, 88, 176, 110, 50, 190);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, min_level, spell_effect_id) 
VALUES (471, 1, 'Shard of Invincibility', 0, 0, 120500, 0, 1, 0, '0', 128, 128, 128, 120, 50, 192);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
        graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (472, 0, 'Hazy Ears', 0, 1, 50, 10, 10, 10, 10, 75, 150, 120222, 8, 1, 0, '0', '0', 0, 1, 1, 1, 215, 71);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore, bindonpickup,
	graphic_tile, graphic_equip) 
VALUES (473, 3, 'Scroll: Ancient Group Healing', 0, 0, 121, 0, 31, 50, '1', '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore, bindonpickup,
	graphic_tile, graphic_equip) 
VALUES (474, 3, 'Scroll: Ancient Group Damage', 0, 0, 122, 0, 59, 50, '1', '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (475, 3, 'Scroll: Ancient Regeneration', 0, 0, 123, 0, 47, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, player_hp, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id,
	stat_sta, stat_str, stat_int, stat_dex) 
VALUES (476, 0, 'Star Shield', 0, 1, 0, 10000, 120262, 48, 4, 1, 100, 100, 100, '0', 10, 10, 10, 10, 10, 78, 10, 10, 10, 10);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
        stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp, weapon_delay, spell_effect_id) 
VALUES (477, 0, 'Sanguine Chaos', 90, 2, 6, 100000, 120295, 60, 4, 0, '0', 0, 20, 10, 10, 10, 200, 200, 10, 78);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
        stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp, weapon_delay) 
VALUES (478, 0, 'Scratch', 70, 2, 6, 30000, 120280, 47, 4, 0, '0', 0, 5, 5, 5, 5, 100, 100, 9);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp) 
VALUES (479, 0, 'Bling Belt', 8, 0, 0, 120208, 0, 25, 25, 3, 3, 3, 3, 100, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore) 
VALUES (480, 0, 'Enchanted Gloves', 0, 9, 0, 0, 120210, 25, 3, 3, 3, 3, 100, 100, 25, '0', '0');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (481, 3, 'Scroll: Augment', 0, 0, 124, 10000, 47, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (482, 3, 'Scroll: Empower', 0, 0, 125, 10000, 31, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (483, 3, 'Scroll: Bustle', 0, 0, 126, 10000, 59, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (484, 3, 'Scroll: Aggravate', 0, 0, 127, 10000, 55, 25, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (485, 3, 'Scroll: Meditate', 0, 0, 128, 20000, 47, 35, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (486, 3, 'Scroll: Bulk', 0, 0, 129, 20000, 31, 35, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (487, 3, 'Scroll: Tumble', 0, 0, 130, 20000, 59, 35, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (488, 3, 'Scroll: Forge', 0, 0, 131, 20000, 55, 35, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        graphic_tile, graphic_equip, stack_size, spell_effect_id) 
VALUES (489, 1, 'Potion of Restoration', 0, 0, 120109, 0, 99, 210);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (490, 2, 'Design: Royal Leggings', 0, 0, 121102, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (491, 2, 'Mold: Royal Legplates', 0, 0, 121138, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (492, 2, 'Design: Royal Tunic', 0, 0, 121102, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (493, 2, 'Mold: Royal Chestplate', 0, 0, 121138, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup) 
VALUES (494, 0, 'Royal Legplates', 11, 3, 225, 2000, 2000, 120036, 5, 50, 59, 0, 200000000, 211, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup) 
VALUES (495, 0, 'Royal Legplates', 11, 3, 225, 4000, 120038, 2, 50, 55, 0, 200000000, 177, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp,  /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup) 
VALUES (496, 0, 'Royal Leggings', 11, 1, 225, 1500, 2500, 120001, 1, 50, 31, 0, 200000000, 212, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup) 
VALUES (497, 0, 'Royal Leggings', 11, 1, 225, 4000, 120000, 6, 50, 47, 0, 200000000, 70, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup) 
VALUES (498, 0, 'Royal Chestplate', 10, 3, 450, 2500, 2500, 120011, 10, 50, 59, 0, 200000000, 213, '1');
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (499, 0, 'Royal Chestplate', 10, 3, 450, 5000, 120034, 10, 50, 55, 0, 66, 69, 189, 120, 200000000, 214, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, player_hp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (500, 0, 'Royal Tunic', 10, 1, 450, 2000, 3000, 120026, 7, 50, 31, 0, 49, 65, 148, 160, 200000000, 215, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup) 
VALUES (501, 0, 'Royal Tunic', 10, 1, 450, 5000, 120025, 11, 50, 47, 0, 200000000, 215, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (502, 0, 'Mischiefs Claw of Destruction', 200, 2, 6, 0, 120050, 15, 1, 59, '1', 50, 1500, 1500, 200000000, 216, '1', 100, 100, 150, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, player_mp, player_hp,
  min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (503, 0, 'Mischiefs Shield of Destruction', 0, 1, 0, 0, 120262, 48, 4, 59, '1', 50, 200, 1000, 1000, 200000000, 215, '1', 100, 100, 150, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
  min_level, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (504, 0, 'Wizards Staff of Enchantment', 150, 3, 8, 0, 120228, 29, 3, 47, '1', 50, 5000, 200000000, 217, '1', 100, 100, 150, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
  min_level, stat_ac, player_hp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (505, 0, 'Knights Sword of Awe', 250, 3, 8, 0, 120286, 22, 4, 55, '1', 50, 275, 5000, 200000000, 218, '1', 100, 100, 150, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (506, 0, 'Clerics Testament of Nobility', 150, 2, 6, 0, 120230, 30, 4, 31, '1', 50, 1000, 2000, 200000000, 77, '1', 100, 100, 150, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, player_mp, player_hp, 
  min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (507, 0, 'Clerics Ward of Nobility', 0, 1, 0, 0, 120259, 42, 4, 31, '1', 50, 200, 1000, 1000, 200000000, 215, '1', 100, 100, 150, 150);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, bindonequip, spell_effect_id, min_experience) 
VALUES (508, 0, 'Slayers Armguards', 6, 0, 0, 120236, 0, 50, 100, 1000, 1000, '1', '1', 219, 200000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience) 
VALUES (509, 0, 'Slayers Belt', 8, 0, 0, 120201, 0, 50, 80, 2000, 2000, '1', 219, '1', 200000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience) 
VALUES (510, 0, 'Slayers Gloves', 9, 0, 0, 120210, 0, 50, 80, 2000, 2000, '1', 219, '1', 200000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience) 
VALUES (511, 0, 'Terror Necklace', 5, 0, 0, 120086, 0, 50, 75, 2000, 2000, '1', 215, '1', 200000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (512, 2, 'Broken Key', 0, 0, 120173, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (513, 2, 'Broken Key', 0, 0, 120174, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (514, 2, 'Broken Key', 0, 0, 120175, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (515, 2, 'Broken Key', 0, 0, 120176, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (516, 2, 'Key to the Ancients Dungeon', 0, 0, 120172, 0, 1, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (517, 3, 'Rune: Knights Blessing', 0, 0, 135, 0, 55, 50, '1', 120152, 0, '1', 200000000);
 
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (518, 3, 'Rune: Wizards Curse', 0, 0, 133, 0, 47, 50, '1', 120154, 0, '1', 200000000);
 
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (519, 3, 'Rune: Mischiefs Craft', 0, 0, 132, 0, 59, 50, '1', 120153, 0, '1', 200000000);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (520, 3, 'Rune: Clerics Blessing', 0, 0, 134, 0, 31, 50, '1', 120155, 0, '1', 200000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (521, 1, 'Hair Dye: Trouble', 15, 0, 0, 121122, 0, 99, 224, 255, 0, 125, 180); 

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (522, 1, 'Hair Dye: Mald''s Dye', 15, 0, 0, 121122, 0, 99, 225, 234, 139, 173, 180); 

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (523, 3, 'Scroll: First Aid', 0, 0, 136, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (524, 3, 'Scroll: Recovery', 0, 0, 137, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (525, 3, 'Scroll: Clobber', 0, 0, 138, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (526, 3, 'Scroll: Pummel', 0, 0, 139, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (527, 3, 'Scroll: First Aid', 0, 0, 136, 250000, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (528, 3, 'Scroll: Recovery', 0, 0, 137, 1000000, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (529, 3, 'Scroll: Clobber', 0, 0, 138, 250000, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (530, 3, 'Scroll: Pummel', 0, 0, 139, 1000000, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (531, 3, 'Scroll: Tame Pet', 0, 0, 140, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (532, 3, 'Scroll: Pet Attack', 0, 0, 141, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (533, 3, 'Scroll: Pet Defend', 0, 0, 142, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (534, 3, 'Scroll: Pet Recall', 0, 0, 143, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (535, 3, 'Scroll: Pet Follow', 0, 0, 144, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (536, 3, 'Scroll: Pet Neutral', 0, 0, 145, 0, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_mp, player_hp, res_fire, res_water, res_earth, res_spirit, res_air, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (537, 0, 'Mald''s Robe', 10, 1, 200, 20, 20, 20, 20, 200, 200, 20, 20, 20, 20, 20, 120255, 23, 1, 0, 0, 25, 28, 65, 215);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_a, spell_effect_id) 
VALUES (538, 0, 'Mald''s Shades', 0, 1, 50, 10, 10, 10, 10, 75, 150, 120048, 11, 1, 300000, '0', '0', 0, 160, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_a) 
VALUES (539, 0, 'Mald''s Holy Sword', 120, 2, 5, 0, 120286, 22, 4, 50, 10, 10, 50, 600, 600, 59, '1', '1', 20000000, 162, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id,
	stat_sta, stat_str, stat_int, stat_dex, graphic_a) 
VALUES (540, 0, 'Mald''s Slime Shield', 0, 1, 0, 0, 120260, 44, 4, 1, 75, 100, '0', 10, 10, 10, 10, 10, 71, 3, 3, 3, 3, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id)
VALUES (541, 1, 'Pet Bait', 15, 0, 0, 120607, 0, 10, 230);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id,
	stat_sta, stat_str, stat_int, stat_dex, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (542, 0, 'DPS Shield', 0, 1, 0, 0, 120259, 57, 4, 1, 75, 100, '0', 10, 10, 10, 10, 10, 71, 3, 3, 3, 3, 255, 255, 255, 185);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (543, 0, 'Not DPS'' Helm', 0, 1, 50, 10, 10, 10, 10, 75, 150, 120288, 28, 1, 0, '0', '0', 0, 255, 255, 255, 185, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (544, 0, 'DPS Robe', 10, 1, 200, 10, 250, 1750, 120706, 20, 50, 15, 0, '1', 0, 0, 0, 185, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, player_hp, player_mp, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id,
        bindonequip, bindonpickup) 
VALUES (545, 0, 'DPS Coral', 50, 2, 5, 0, 120272, 51, 4, 0, '1', 50, 125, 125, 255, 255, 255, 185, 76, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (546, 1, 'Hair Dye: Green', 15, 0, 100, 121122, 0, 99, 236, 0, 255, 0, 180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (547, 1, 'Hair Dye: Blonde', 15, 0, 100, 121122, 0, 99, 237, 253, 232, 80, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id)
VALUES (548, 1, 'Teleport: PVP Event', 15, 0, 0, 120118, 0, 99, 238);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (549, 0, 'Team 1 Headband', 0, 3, 19, 3, 4, 200, 120023, 2, 0, 0, 0, '1', '1', 255, 0, 0, 180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (550, 0, 'Team 2 Headband', 0, 3, 19, 3, 4, 200, 120023, 2, 0, 0, 0, '1', '1', 0, 0, 255, 180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
        stat_str, stat_sta, stat_dex, player_hp, player_mp, weapon_delay, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (551, 0, 'Mald''s Devastator Sword', 80, 2, 6, 0, 120226, 25, 4, 0, '0', 0, 10, 5, 5, 125, 125, 7, 0, 0, 0, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, player_hp, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id,
	stat_sta, stat_str, stat_int, stat_dex, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (552, 0, 'Mald''s Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 1, 100, 100, 100, '0', 10, 10, 10, 10, 10, 78, 10, 10, 10, 10, 0, 0, 0, 185);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value,graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (553, 0, 'Mald''s Monster Feet', 12, 1, 30, 5, 5, 5, 50, 100, 120705, 7, 0, 0, 0, 0, 0, 0, 185);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (554, 1, 'Hair Dye: Rampant Rape', 15, 0, 100, 121122, 0, 99, 239, 25, 25, 65, 215);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (555, 0, 'Sunshine Cloak', 10, 1, 375, 5, 15, 1750, 300, 120709, 15, 50, 51, 0, '1', 255, 255, 0, 180, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (556, 0, 'Egg Yolk Headband', 0, 1, 50, 10, 10, 10, 10, 75, 150, 120023, 2, 1, 0, '0', '0', 0, 255, 255, 0, 180, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id,
	stat_sta, stat_str, stat_int, stat_dex, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (557, 0, '5 In The Pink', 0, 1, 0, 0, 120259, 57, 4, 1, 75, 100, '0', 10, 10, 10, 10, 10, 71, 3, 3, 3, 3, 255, 0, 125, 180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (558, 1, 'Hair Dye: Beowulf Sperm', 15, 0, 100, 121122, 0, 99, 240, 280, 113, 39, 5180);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (559, 0, 'Mald''s Coat', 10, 1, 375, 5, 15, 1750, 300, 120009, 14, 50, 51, 0, '1', 107, 7, 7, 205, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (560, 0, 'Penguin Costume', 0, 3, 50, 10, 3, 3, 3, 400, 200, 120900, 15, 0, 0, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (561, 0, 'Grim Reaper Costume', 0, 3, 50, 3, 10, 3, 3, 200, 400, 120901, 17, 0, 0, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (562, 0, 'Ghost Costume', 0, 3, 50, 3, 3, 10, 3, 400, 200, 120708, 19, 0, 0, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (563, 0, 'Gingerbread Man Costume', 0, 3, 50, 3, 3, 3, 10, 200, 400, 120714, 20, 0, 0, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event) 
VALUES (564, 0, 'Devil Costume', 0, 3, 80, 5, 5, 5, 5, 400, 200, 120902, 22, 0, 0, 0, '1', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, stack_size, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (565, 1, 'Hair Dye: Sorwind''s Dye', 15, 0, 100, 121122, 0, 99, 241, 300, 300, 300, 550);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (566, 3, 'Scroll: Ancient Healing 2', 0, 0, 146, 0, 31, 50, '1', 120110, 0, '1', 200000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (567, 0, 'Maser''s Vengeance', 200, 2, 6, 0, 120272, 51, 4, 59, '1', 50, 1500, 1500, 200000000, 216, '1', 1, 1, 1, 1134);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (568, 0, 'Maser''s Revolution', 10, 1, 375, 5, 15, 1750, 300, 120009, 13, 50, 59, 0, '1', 14000, 14000, 14000, 1200, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup,
  graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (569, 0, 'Azul''s CP', 10, 3, 450, 2500, 2500, 120255, 23, 50, 59, 0, 200000000, 213, '1', 0, 0, 89, 185);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (570, 0, 'Azul''s Sword', 200, 2, 6, 0, 120272, 51, 4, 59, '1', 50, 1500, 1500, 200000000, 216, '1', 0, 0, 89, 185);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (571, 0, 'Azul''s A Princess', 0, 1, 50, 10, 10, 10, 10, 75, 150, 120287, 29, 1, 0, '0', '0', 0, 0, 0, 89, 185, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, player_mp, player_hp,
  min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (572, 0, 'Azul''s Shield', 0, 1, 0, 0, 120259, 57, 4, 59, '1', 50, 200, 1000, 1000, 200000000, 215, '1', 0, 0, 89, 185);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup,
  graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (573, 0, 'DPS CP', 10, 3, 450, 2500, 2500, 120011, 10, 50, 59, 0, 200000000, 213, '1', 255, 255, 255, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (574, 0, 'DPS Sword', 200, 2, 6, 0, 120226, 25, 4, 59, '1', 50, 1500, 1500, 200000000, 216, '1', 255, 50, 255, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, player_mp, player_hp,
  min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (575, 0, 'DPS Pink Shield', 0, 1, 0, 0, 120259, 57, 4, 59, '1', 50, 200, 1000, 1000, 200000000, 215, '1', 255, 50, 255, 140);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (576, 0, 'DPS Headband', 0, 1, 50, 10, 10, 10, 10, 75, 150, 120023, 2, 1, 0, '0', '0', 0, 255, 50, 255, 140, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (577, 3, 'Scroll: Death Touch', 0, 0, 147, 0, 31, 50, '1', 120110, 0, '1', 2000000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Rogue */
VALUES (578, 0, 'DPS Boots', 12, 3, 100, 0, 0, 0, 50, 1000, 1000, '1', '1', '1', 120041, 4, 50, 59, 0, 76, 255, 255, 255, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (579, 0, 'DPS Legplates', 11, 3, 225, 2000, 2000, 120036, 5, 50, 59, 0, 200000000, 211, '1', 255, 255, 255, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id) 
VALUES (580, 0, 'Enchanted Bracelet of Fire', 0, 4, 0, 0, 120070, 40, 20, 20, 40, 20, 400, 200, 50, '1', 70, 0, 0, 0, 0, 400000000, '1', 177);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id) 
VALUES (581, 0, 'Enchanted Bracelet of Earth', 0, 4, 0, 0, 120072, 10, 20, 20, 40, 20, 200, 400, 50, '1', 0, 0, 70, 0, 0, 400000000, '1', 70);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id) 
VALUES (582, 0, 'Enchanted Bracelet of Air', 0, 4, 0, 0, 120074, 20, 20, 20, 25, 35, 250, 350, 50, '1', 0, 0, 0, 0, 70, 400000000, '1', 84);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id) 
VALUES (583, 0, 'Enchanted Bracelet of Water', 0, 4, 0, 0, 120076, 20, 20, 20, 30, 30, 300, 300, 50, '1', 0, 70, 0, 0, 0, 400000000, '1', 244);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id) 
VALUES (584, 0, 'Enchanted Bracelet of Spirit', 0, 4, 0, 0, 120079, 30, 30, 30, 30, 30, 300, 300, 50, '1', 0, 0, 0, 70, 0, 400000000, '1', 245);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (585, 2, 'Howto: Bracelet Enchantment', 0, 0, 121102, 0, 1, 0, '0', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id, bindonpickup) 
VALUES (586, 0, 'Prison Gloves', 0, 9, 0, 0, 120210, 70, 10, 10, 10, 10, 500, 500, 1, '0', '1', 71, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_a) 
VALUES (587, 0, 'Enchanted Divine Helm', 0, 3, 150, 25, 25, 0, 0, 3000, 3000, 120022, 10, 50, 59, 0, '1', '1', '1', 211, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_a) 
VALUES (588, 0, 'Enchanted Divine Helm', 0, 3, 150, 0, 50, 0, 0, 6000, 0, 120023, 2, 50, 55, 0, '1', '1', '1', 176, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_a) 
VALUES (589, 0, 'Enchanted Divine Crown', 0, 3, 150, 50, 0, 0, 0, 0, 6000, 120032, 5, 50, 47, 0, '1', '1', '1', 244, 100);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_a) 
VALUES (590, 0, 'Enchanted Divine Crown', 0, 3, 150, 30, 20, 0, 0, 2000, 4000, 120031, 8, 50, 31, 0, '1', '1', '1', 244, 100);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, lore, bindonpickup) 
VALUES (591, 2, 'Howto: Helm Enchantment', 0, 0, 121102, 0, 1, 0, '0', '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (592, 3, 'Scroll: Group Ancient Dungeons Teleport', 0, 0, 148, 0, 47, 50, '1', 120110, 0, '1', 400000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (593, 3, 'Scroll: Paradise Teleport', 0, 0, 149, 0, 0, 50, '1', 120110, 0, '1', 400000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (594, 3, 'Scroll: Ancient Covenant', 0, 0, 150, 0, 47, 50, '1', 120110, 0, '1', 400000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (595, 3, 'Scroll: Ancient Sacrifice 2', 0, 0, 151, 0, 31, 50, '1', 120110, 0, '1', 400000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, player_hp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (596, 0, 'Slippey''s Robe', 10, 1, 450, 2000, 3000, 120254, 23, 50, 31, 0, 200, 0, 0, 180, 200000000, 215, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (597, 3, 'Scroll: Ancient Taunt 2', 0, 0, 152, 0, 55, 50, '1', 120110, 0, '1', 400000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_int, stat_sta, stat_dex, player_hp, player_mp, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (598, 0, 'Powerful Lucky Staff', 100, 3, 7, 2000, 120228, 29, 3, 0, '0', 1, 10, 10, 10, 10, 100, 100, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (599, 0, 'Powerful Lucky Robes', 10, 1, 140, 10, 10, 10, 10, 100, 100, 120255, 23, 1, 0, 2000, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (600, 0, 'Powerful Lucky Legplates', 11, 3, 70, 6, 6, 0, 0, 100, 120037, 2, 1, 0, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (601, 0, 'Powerful Lucky Boots', 12, 3, 110, 4, 4, 100, 120042, 2, 1, 0, 6000, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (602, 0, 'Powerful Lucky Chestplate', 10, 1, 150, 10, 10, 10, 10, 200, 50, 120246, 21, 1, 0, 4000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, stat_str, player_hp, player_mp) 
VALUES (603, 0, 'Powerful Lucky Spear', 200, 3, 9, 40000, 120264, 45, 3, 0, '0', 1, 10, 10, 10, 10, 500, 100);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp, weapon_delay, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (604, 0, 'Powerful Lucky Dagger', 160, 2, 6, 60000, 120249, 37, 4, 0, '0', 0, 20, 10, 10, 250, 250, 7, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
        stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp, weapon_delay) 
VALUES (605, 0, 'Powerful Scratch', 140, 2, 6, 60000, 120280, 47, 4, 0, '0', 0, 10, 10, 10, 10, 200, 200, 9);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, player_hp, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id,
	stat_sta, stat_str, stat_int, stat_dex) 
VALUES (606, 0, 'Powerful Star Shield', 0, 1, 0, 20000, 120262, 48, 4, 1, 200, 200, 200, '0', 20, 20, 20, 20, 20, 79, 20, 20, 20, 20);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
        stat_str, stat_sta, stat_dex, stat_int, player_hp, player_mp, weapon_delay, spell_effect_id) 
VALUES (607, 0, 'Powerful Sanguine Chaos', 200, 2, 6, 200000, 120295, 60, 4, 0, '0', 0, 20, 20, 20, 20, 400, 400, 10, 78);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (608, 0, 'Powerful Wolfs Essence', 0, 1, 200, 10, 10, 10, 10, 200, 200, 120051, 24, 1, 0, 100000, '0', '0', 97, 90, 90, 160, 254);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_mp, player_hp, res_fire, res_water, res_earth, res_spirit, res_air, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value) 
VALUES (609, 0, 'Powerful Battle Gown', 10, 1, 400, 40, 40, 40, 40, 400, 400, 40, 40, 40, 40, 40, 120257, 25, 1, 0, 100000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id) 
VALUES (610, 0, 'Powerful Divine Pauldrons', 0, 6, 0, 100000, 120278, 120, 0, 0, 12, 12, 0, 180, 0, '1', '1', 67);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id) 
VALUES (611, 0, 'Powerful Celestial Pauldrons', 0, 6, 0, 100000, 120278, 120, 0, 0, 12, 12, 180, 0, 0, '1', '1', 69);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, item_value, lore, event, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (612, 0, 'Powerful Lucky Laurels', 0, 1, 100, 20, 20, 20, 20, 150, 300, 120288, 28, 1, 600000, '0', '0', 0, 97, 90, 90, 160, 72);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (613, 0, 'Powerful Lucky Belt', 0, 8, 0, 800000, 120093, 100, 10, 10, 10, 10, 150, 150, 0, '0', '0', 72, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (614, 0, 'Powerful Lucky Necklace', 0, 5, 0, 1600000, 120082, 100, 10, 10, 10, 10, 100, 10, 1, '0', '0', 97, 90, 90, 160, 72);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_mp, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id,
	stat_sta, stat_str, stat_int, stat_dex, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (615, 0, 'Powerful Firebreather Shield', 0, 1, 0, 1000000, 120281, 54, 4, 1, 75, 100, '0', 20, 20, 20, 20, 20, 72, 6, 6, 6, 6, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (616, 3, 'Scroll: Powerful First Aid', 0, 0, 153, 250000, 0, 0, 120110, 0);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (617, 3, 'Scroll: Powerful Recovery', 0, 0, 154, 2000000, 0, 0, 120110, 0);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (618, 3, 'Scroll: Powerful Clobber', 0, 0, 155, 250000, 0, 0, 120110, 0);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (619, 3, 'Scroll: Powerful Pummel', 0, 0, 156, 2000000, 0, 0, 120110, 0);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, res_fire, res_water, res_earth, res_spirit, res_air,
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, player_hp, player_mp) 
VALUES (620, 0, 'Powerful Shades', 0, 1, 200, 20, 20, 20, 20, 20, 20, 20, 20, 20, 120048, 11, 0, 0, 80000, '0', '0', 300, 300);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (621, 0, 'Powerful Ring of Valiance', 0, 4, 0, 0, 120061, 0, 0, 0, 0, 0, 0, 0, 40, '0', '1', 0, 0, 0, 0, 0, 256, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (622, 0, 'Powerful Bracelet of Valiance', 0, 4, 0, 0, 120059, 0, 0, 0, 0, 0, 0, 0, 40, '0', '1', 0, 0, 0, 0, 0, 255, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (623, 0, 'Powerful Ancient Moon Wand', 140, 2, 5, 0, 120243, 38, 4, 50, 10, 30, 500, 2000, 15, '1', '1', 20000000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (624, 0, 'Powerful Ancient Garb', 10, 1, 100, 20, 500, 2550, 120706, 20, 50, 15, 0, '1', 97, 90, 90, 160, '1', 20000000);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (625, 0, 'Powerful Ancient Robe', 10, 1, 100, 40, 1300, 2000, 120254, 23, 50, 15, 0, '1', 97, 90, 90, 160, '1', 20000000);




INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (626, 0, 'Powerful Cloak of Power', 7, 0, 0, 110034, 0, 50, 60, 10, 10, 15, 15, 500, 500, '1', 72, '1', 20000000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (627, 0, 'Powerful Pauldrons of Power', 6, 0, 0, 120278, 0, 50, 75, 15, 15, 15, 15, 500, 500, '1', 72, '1', 20000000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (628, 0, 'Powerful Belt of Power', 8, 0, 0, 120093, 0, 50, 120, 20, 20, 20, 20, 500, 500, '1', 72, '1', 20000000, 97, 90, 90, 160);




INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience) 
VALUES (629, 0, 'Powerful Ancient Armor', 10, 1, 150, 10, 30, 2500, 600, 120245, 21, 50, 51, 0, '1', 97, 90, 90, 160, '1', 20000000);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_str, player_hp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (630, 0, 'Powerful Ancient Axe', 300, 2, 5, 0, 120282, 55, 4, 50, 50, 40, 30, 2500, 55, '1', '1', 20000000, 162, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (631, 0, 'Powerful Ancient Dagger', 240, 2, 5, 0, 120266, 49, 4, 50, 20, 20, 100, 1200, 1200, 59, '1', '1', 20000000, 162, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (632, 0, 'Super Powerful Ring of Valiance', 0, 4, 0, 0, 120061, 0, 0, 0, 0, 0, 0, 0, 40, '0', '1', 0, 0, 0, 0, 0, 258, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (633, 0, 'Super Powerful Bracelet of Valiance', 0, 4, 0, 0, 120059, 0, 0, 0, 0, 0, 0, 0, 40, '0', '1', 0, 0, 0, 0, 0, 257, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_str, player_hp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (634, 0, 'Super Powerful Ancient Axe', 600, 2, 5, 0, 120282, 55, 4, 50, 50, 40, 30, 4000, 55, '1', '1', 20000000, 71, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (635, 0, 'Super Powerful Ancient Dagger', 500, 2, 5, 0, 120266, 49, 4, 50, 40, 40, 100, 2400, 2400, 59, '1', '1', 20000000, 71, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (636, 0, 'Super Powerful Ancient Moon Wand', 280, 2, 5, 0, 120243, 38, 4, 50, 10, 30, 1000, 4000, 15, '1', '1', 20000000, 97, 90, 90, 160, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id) 
VALUES (637, 0, 'Super Powerful Ancient Robe', 10, 1, 200, 40, 2600, 4000, 120254, 23, 50, 15, 0, '1', 97, 90, 90, 160, '1', 20000000, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id) 
VALUES (638, 0, 'Super Powerful Ancient Armor', 10, 1, 300, 10, 30, 5000, 1200, 120245, 21, 50, 51, 0, '1', 97, 90, 90, 160, '1', 20000000, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id) 
VALUES (639, 0, 'Super Powerful Ancient Garb', 10, 1, 200, 40, 1000, 5000, 120706, 20, 50, 15, 0, '1', 97, 90, 90, 160, '1', 20000000, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event,graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (640, 0, 'Powerful Champions Helmet', 0, 3, 64, 12, 12, 200, 120023, 2, 50, 55, 10000, '1', '1', 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value,graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (641, 0, 'Powerful Champions Legplates', 11, 3, 140, 8, 8, 8, 8, 200, 120038, 2, 50, 55, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value,graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (642, 0, 'Powerful Champions Boots', 12, 3, 50, 6, 6, 6, 6, 100, 120043, 2, 50, 55, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (643, 0, 'Powerful Champions Chestplate', 10, 3, 200, 16, 16, 8, 500, 120034, 10, 50, 55, 10000, 97, 90, 90, 160);




INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (644, 0, 'Powerful Deceivers Helmet', 0, 3, 60, 12, 12, 200, 120022, 10, 50, 59, 10000, '1', '0', 97, 90, 90, 160);




INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (645, 0, 'Powerful Deceivers Legplates', 11, 3, 75, 10, 10, 5, 10, 200, 120036, 5, 50, 59, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (646, 0, 'Powerful Deceivers Boots', 12, 3, 60, 6, 6, 6, 6, 150, 120041, 4, 50, 59, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (647, 0, 'Powerful Deceivers Chestplate', 10, 3, 110, 20, 20, 20, 400, 120011, 10, 50, 59, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (648, 0, 'Powerful High Priests Leggings', 11, 1, 70, 10, 10, 10, 10, 200, 160, 120001, 1, 50, 31, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_dex, stat_sta, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (649, 0, 'Powerful High Priests Shoes', 12, 1, 40, 5, 8, 5, 6, 100, 120005, 1, 50, 31, 10000, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (650, 0, 'Powerful High Priests Crown', 0, 1, 75, 8, 8, 8, 120031, 8, 50, 31, 10000, '1', '0', 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (651, 0, 'Powerful High Priests Tunic', 10, 1, 90, 5, 12, 16, 200, 160, 120026, 7, 50, 31, 10000, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (652, 0, 'Powerful Elemental Leggings', 11, 1, 60, 5, 5, 16, 5, 70, 200, 120000, 6, 50, 47, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_dex, stat_sta, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (653, 0, 'Powerful Elemental Shoes', 12, 1, 40, 5, 12, 5, 6, 150, 120007, 5, 50, 47, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (654, 0, 'Powerful Elemental Tunic', 10, 1, 80, 5, 5, 30, 300, 80, 120025, 11, 50, 47, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (655, 0, 'Powerful Elemental Crown', 0, 1, 60, 5, 6, 16, 120032, 5, 50, 47, 10000, '1', '0', 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (656, 0, 'Powerful Bear Claw', 120, 2, 6, 10000, 120050, 14, 4, 15, '1', 50, 3, 3, 7, 300, 300, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (657, 0, 'Powerful Champions Blade', 220, 2, 5, 10000, 120046, 12, 4, 55, '1', 50, 50, 20, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (658, 0, 'Powerful Deceivers Dagger', 170, 2, 6, 10000, 120047, 11, 4, 59, '0', 50, 10, 10, 20, 200, 200, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (659, 0, 'Powerful Moon Shield', 0, 1, 0, 10000, 120259, 57, 4, 45, 100, '1', 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (660, 0, 'Powerful Beefs Immortality', 0, 4, 0, 10000, 120054, 160, 40, 40, 40, 40, 1200, 1200, 50, '0', '1', 6, 6, 6, 6, 6, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (661, 0, 'Powerful Beefs Protection', 0, 7, 0, 10000, 110034, 60, 20, 20, 20, 20, 40, 400, 50, '0', '1', 10, 10, 10, 10, 10, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, player_hp, player_mp, stat_str, stat_sta, stat_dex, stat_int, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (662, 0, 'Powerful Beefs Fist', 300, 2, 4, 10000, 120014, 0, 1, 50, 600, 600, 40, 20, 20, 20, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (663, 0, 'Super Powerful Moon Shield', 0, 1, 0, 10000, 120259, 57, 4, 45, 350, '1', 97, 90, 90, 160, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (664, 0, 'Super Powerful Beefs Immortality', 0, 4, 0, 10000, 120054, 300, 80, 80, 80, 80, 2400, 2400, 50, '0', '1', 16, 16, 16, 16, 16, 97, 90, 90, 160, 71);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (665, 0, 'Super Powerful Beefs Protection', 0, 7, 0, 10000, 110034, 120, 40, 40, 40, 40, 800, 800, 50, '0', '1', 20, 20, 20, 20, 20, 97, 90, 90, 160, 71);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, player_hp, player_mp, stat_str, stat_sta, stat_dex, stat_int, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (666, 0, 'Super Powerful Beefs Fist', 600, 2, 4, 10000, 120014, 0, 1, 50, 1200, 1200, 80, 40, 40, 40, 97, 90, 90, 160, 71);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp,  
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (667, 0, 'Powerful Whirling Leggings', 11, 1, 150, 0, 6, 30, 0, 50, 250, 120000, 3, 50, 15, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_int, stat_dex, stat_sta, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (668, 0, 'Powerful Whirling Slippers', 12, 1, 70, 0, 18, 0, 10, 150, 120005, 1, 50, 15, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (669, 0, 'Powerful Whirling Hat', 0, 1, 110, 0, 10, 26, 120033, 6, 50, 15, 10000, '1', '0', 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, stat_str, stat_sta, stat_dex, player_hp, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (670, 0, 'Powerful Devastating Dagger of the Fox', 200, 2, 5, 10000, 120211, 27, 4, 59, '1', 50, 0, 10, 14, 30, 200, 230, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_dex, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (671, 0, 'Powerful Whirling Robes', 10, 1, 300, 60, 15, 15, 160, 600, 120002, 2, 50, 15, 10000, '1', 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, res_fire, res_water, res_earth, res_spirit, res_air, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (672, 0, 'Powerful Dragon Scale Belt', 0, 8, 0, 10000, 120096, 80, 10, 0, 30, 30, 250, 250, 43, '0', '1', 0, 0, 0, 0, 0, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, player_hp, player_mp, stat_ac, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (673, 0, 'Powerful Devastating Birch Wood Staff', 100, 3, 7, 10000, 120227, 28, 3, 15, '1', 50, 40, 20, 10, 100, 1000, 100, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a, res_fire, res_water, res_earth, res_spirit, res_air) 
VALUES (674, 0, 'Powerful Gold Helmet', 0, 3, 200, 0, 0, 15, 15, 100, 100, 120251, 21, 50, 51, 10000, '0', '0', 97, 90, 90, 160, 4, 4, 4, 4, 4);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (675, 0, 'Powerful Gold Legplates', 11, 3, 180, 14, 14, 0, 0, 180, 120037, 2, 50, 51, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (676, 0, 'Powerful Gold Boots', 12, 3, 100, 10, 10, 0, 0, 100, 100, 120042, 2, 50, 51, 10000, '0', 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (677, 0, 'Powerful Gold Chestplate', 10, 3, 500, 25, 25, 20, 300, 120246, 21, 50, 51, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (678, 0, 'Powerful Devastators Chestplate', 10, 3, 400, 30, 30, 30, 300, 120246, 21, 49, 51, 10000, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, stat_str, stat_sta, stat_dex, player_hp, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (679, 0, 'Powerful Devastating Dragon Tooth Sword', 240, 2, 5, 10000, 120242, 39, 4, 55, '1', 49, 0, 20, 20, 20, 200, 115, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (680, 0, 'Powerful Devastators Helmet', 0, 3, 180, 30, 30, 30, 30, 200, 200, 120030, 4, 49, 51, 10000, '1', '0', 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (681, 0, 'Powerful Devastators Legplates', 11, 3, 200, 20, 20, 20, 20, 145, 145, 120036, 5, 49, 0, 0, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (682, 0, 'Powerful Devastators Boots', 12, 3, 100, 15, 15, 15, 15, 100, 100, 120041, 4, 49, 0, 10000, '1', 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_dex, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (683, 0, 'Powerful Devastators Robes', 10, 1, 300, 30, 30, 100, 400, 120009, 13, 49, 15, 10000, '1', 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (684, 0, 'Powerful Savage Pauldrons of the Boar', 6, 0, 10000, 120236, 0, 50, 90, 4, 4, 4, 4, 100, 300, '1', 4, 4, 4, 4, 4, 15, 97, 90, 90, 160);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (685, 0, 'Powerful Savage Pauldrons of the Cow', 6, 0, 10000, 120232, 0, 50, 120, 4, 4, 4, 4, 300, 100, '1', 4, 4, 4, 4, 4, 50, 97, 90, 90, 160);




INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	graphic_tile, graphic_equip, min_level, stat_ac, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, class_restrictions, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (686, 0, 'Powerful Red Ring', 0, 4, 0, 120063, 0, 50, 10, 100, 100, '1', 4, 4, 4, 4, 4, 15, 97, 90, 90, 160, 84);




INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	graphic_tile, graphic_equip, min_level, stat_ac, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, class_restrictions, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (687, 0, 'Powerful Black Ring', 0, 4, 0, 120063, 0, 50, 10, 100, 100, '1', 2, 2, 2, 2, 2, 50, 280, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (689, 3, 'Scroll: Powerful Arcane Blast', 0, 0, 157, 20000000, 47, 50, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (690, 3, 'Rune: Powerful Arcane Assault', 0, 0, 158, 20000000, 47, 50, '1', 120146, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (691, 3, 'Scroll: Powerful Spirit Strike', 0, 0, 159, 20000000, 55, 50, '1', 120110, 0);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (692, 3, 'Scroll: Powerful Critical Strike', 0, 0, 160, 20000000, 59, 50, '1', 120110, 0);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (693, 3, 'Rune: Powerful Fearsome Lash', 0, 0, 161, 20000000, 59, 50, '1', 120144, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (694, 3, 'Rune: Powerful Sunder of Spirits', 0, 0, 162, 20000000, 55, 50, '1', 120145, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (695, 3, 'Scroll: Powerful Sacrifice', 0, 0, 164, 10000000, 31, 50, '1', 120110, 0, '1', 1);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore, bindonpickup,
	graphic_tile, graphic_equip) 
VALUES (696, 3, 'Scroll: Powerful Group Healing', 0, 0, 163, 10000000, 31, 50, '1', '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta) 
VALUES (697, 0, 'Powerful Brilliant Hammer', 40, 2, 5, 4400, 120039, 8, 4, 31, '0', 27, 10, 4);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_sta) 
VALUES (698, 0, 'Powerful Bastard Sword', 80, 2, 5, 4400, 120015, 4, 4, 55, '0', 27, 10, 4);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_str, stat_dex) 
VALUES (699, 0, 'Powerful Malignant Dagger', 68, 2, 6, 4400, 120013, 1, 4, 59, '0', 27, 10, 10);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_int, stat_sta, stat_dex, player_hp, player_mp) 
VALUES (700, 0, 'Powerful Thicket Stave', 44, 3, 8, 4400, 120021, 5, 3, 47, '0', 27, 10, 0, 2, 0, 0);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (701, 0, 'Super Powerful Valiant Helmet', 0, 3, 200, 0, 21, 21, 30, 300, 600, 120250, 21, 50, 51, 150000, '0', 162, 27, 224, 200, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (702, 0, 'Super Powerful Valiant Chestplate', 10, 3, 300, 60, 60, 60, 900, 120245, 21, 50, 51, 150000, 162, 27, 224, 200, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (703, 0, 'Super Powerful Valiant Legplates', 11, 3, 150, 45, 45, 45, 45, 525, 450, 120036, 5, 50, 0, 150000, 162, 27, 224, 200, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (704, 0, 'Super Powerful Valiant Boots', 12, 3, 150, 30, 30, 0, 0, 450, 300, 120041, 4, 50, 0, 150000, 162, 27, 224, 200, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, player_hp, player_mp,
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (705, 0, 'Super Powerful Valiant Cap', 0, 1, 150, 0, 26, 54, 600, 300, 120033, 6, 50, 15, 150000, '0', '0', 162, 27, 224, 200, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (706, 0, 'Super Powerful Valiant Robes', 10, 1, 200, 105, 15, 390, 1276, 120255, 23, 50, 15, 150000, 162, 27, 224, 200, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (707, 0, 'Super Powerful Valiant Mesh', 10, 3, 200, 60, 60, 60, 650, 400, 120238, 17, 50, 59, 150000, 162, 27, 224, 200, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (708, 0, 'Super Powerful Valiant Stealth', 0, 3, 150, 30, 30, 60, 60, 450, 450, 120022, 2, 50, 59, 150000, '0', 162, 27, 224, 200, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, 
	graphic_tile, graphic_equip) 
VALUES (709, 3, 'Scroll: Super Powerful Pummel', 0, 0, 165, 10000000, 0, 0, 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_int, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (710, 0, 'Magus Ancient Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 200, 40, 1200, '1', 90, 200, 40, 100, '1', 20000000, 72, 47);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (711, 0, 'Priests Ancient Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 200, 10, 30, 200, 1000, '1', 40, 160, 200, 100, '1', 20000000, 268, 31);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (712, 0, 'Rogues Ancient Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 250, 20, 20, 50, 600, 600, '1', 20, 70, 130, 100, '1', 20000000, 268, 59);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, player_hp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (713, 0, 'Warriors Ancient Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 300, 40, 1200, '1', 180, 60, 25, 100, '1', 20000000, 269, 55);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (714, 0, 'Powerful Snake Tiara', 0, 1, 90, 16, 20, 1050, 700, 121000, 26, 50, 1, 0, '1', 71, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (715, 0, 'Powerful Snake Helm', 0, 1, 200, 16, 20, 1050, 700, 121001, 25, 50, 1, 0, '1', 77, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (716, 0, 'Super Powerful Snake Tiara', 0, 1, 180, 32, 40, 2100, 1400, 121000, 26, 50, 1, 0, '1', 72, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (717, 0, 'Super Powerful Snake Helm', 0, 1, 200, 32, 40, 2100, 1400, 121001, 25, 50, 1, 0, '1', 77, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id) 
VALUES (718, 0, 'Super Powerful Ancient Garb', 10, 1, 200, 40, 1000, 5100, 120706, 20, 50, 15, 0, '1', 97, 90, 90, 160, '1', 20000000, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id) 
VALUES (719, 0, 'Super Powerful Ancient Robe', 10, 1, 200, 60, 2600, 4000, 120254, 23, 50, 15, 0, '1', 97, 90, 90, 160, '1', 20000000, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, 
	graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id) 
VALUES (720, 0, 'Super Powerful Ancient Armor', 10, 1, 250, 25, 60, 5100, 1200, 120245, 21, 50, 51, 0, '1', 97, 90, 90, 160, '1', 20000000, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (721, 3, 'Scroll: Powerful Taunt', 0, 0, 166, 5000000, 55, 50, '1', 120110, 0, '1', 4);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (722, 3, 'Scroll: Royal Critical Strike', 0, 0, 167, 30000000, 59, 50, '1', 120110, 0);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (723, 0, 'Skee Skee On Yo Weapon', 500, 2, 5, 0, 120148, 22, 4, 50, 40, 40, 100, 2400, 2400, 59, '1', '1', 0, 71, 69, 3, 3, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, min_experience) 
VALUES (724, 0, 'Skee Skee On Yo Robe', 10, 1, 500, 10, 30, 2500, 600, 120245, 28, 50, 51, 0, '1', '1', 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (725, 0, 'Skee Skee On Yo Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 250, 20, 20, 50, 600, 600, '1', 69, 3, 3, 200, '1', 0, 268, 59);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (726, 0, 'Skee Skee On Yo Shield Sword', 0, 1, 0, 0, 120148, 22, 4, 50, 250, 20, 20, 50, 600, 600, '1', 69, 3, 3, 200, '1', 0, 268, 59);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (727, 0, 'DPS Poo On Yo Wep', 150, 2, 6, 0, 120230, 30, 4, 31, '1', 50, 1000, 2000, 2000, 77, '1', 209, 4, 4, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (728, 0, 'DPS Poo On Yo Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 200, 10, 30, 200, 1000, '1', 209, 4, 4, 200, '1', 20000000, 268, 31);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, player_hp, player_mp,
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (729, 0, 'DPS Poo On Yo Shield Cap', 0, 1, 215, 0, 26, 54, 600, 300, 120033, 6, 50, 15, 150000, '0', '0', 0, 0, 0, 200, 72);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (730, 0, 'DPS Poo ON Yo Shield Robes', 10, 1, 600, 105, 15, 390, 1276, 120255, 22, 50, 15, 150000, 0, 0, 0, 200, 72);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_sta, stat_dex, stat_str, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (731, 0, 'Skee Skee On Yo Helmet', 0, 3, 360, 30, 30, 60, 60, 450, 450, 120022, 11, 50, 59, 150000, '0', 69, 3, 3, 200, 71);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Rogue */
VALUES (732, 0, 'Powerful Ancient Rouge Boots', 12, 3, 150, 0, 0, 0, 50, 2000, 2000, '1', '1', '1', 120041, 4, 50, 59, 0, 77, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Warrior */
VALUES (733, 0, 'Powerful Ancient Warrior Boots', 12, 3, 150, 0, 100, 0, 0, 4000, 0, '1', '1', '1', 120043, 2, 50, 55, 0, 77, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Magus */
VALUES (734, 0, 'Powerful Ancient Magus Slippers', 12, 3, 150, 0, 0, 50, 50, 0, 4000, '1', '1', '1', 120007, 5, 50, 47, 0, 71, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Priest */
VALUES (735, 0, 'Powerful Ancient Priest Slippers', 12, 3, 150, 60, 40, 0, 0, 2000, 2500, '1', '1', '1', 120005, 1, 50, 31, 0, 77, 46, 27, 6, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Rogue */
VALUES (736, 0, 'Super Powerful Ancient Rogue Boots', 12, 3, 200, 0, 0, 0, 200, 4000, 4000, '1', '1', '1', 120041, 4, 50, 59, 0, 268, 0, 0, 0, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Warrior */
VALUES (737, 0, 'Super Powerful Ancient Warrior Boots', 12, 3, 200, 0, 100, 0, 0, 8000, 0, '1', '1', '1', 120043, 2, 50, 55, 0, 268, 173, 64, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Magus */
VALUES (738, 0, 'Super Powerful Ancient Magus Slippers', 12, 3, 200, 0, 0, 100, 100, 0, 8000, '1', '1', '1', 120007, 5, 50, 47, 0, 72, 6, 69, 138, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Priest */
VALUES (739, 0, 'Super Powerful Ancient Priest Slippers', 12, 3, 200, 120, 80, 0, 0, 4000, 5000, '1', '1', '1', 120005, 1, 50, 31, 0, 268, 237, 221, 47, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  stat_ac, stat_str, stat_sta, stat_int, stat_dex, res_fire, res_water, res_earth, res_spirit, res_air,
  graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, player_hp, player_mp, spell_effect_id, bindonpickup) 
VALUES (740, 0, 'Powerful Doom Helm', 0, 1, 300, 20, 20, 20, 20, 20, 20, 20, 20, 20, 120287, 29, 50, 0, 0, '1', '0', 4000, 4000, 255, '1');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, res_fire, res_water, res_earth, res_spirit, res_air, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, lore, bindonpickup) 
VALUES (741, 0, 'Powerful Doom Robe', 10, 1, 400, 40, 40, 40, 40, 40, 40, 40, 40, 40, 6000, 6000, 120285, 22, 50, 0, 0, 258, '1', '1');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  stat_ac, stat_str, stat_sta, stat_int, stat_dex, res_fire, res_water, res_earth, res_spirit, res_air,
  graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, player_hp, player_mp, spell_effect_id, bindonpickup) 
VALUES (742, 0, 'Super Powerful Doom Helm', 0, 1, 350, 40, 40, 40, 40, 40, 40, 40, 40, 40, 120287, 29, 50, 0, 0, '1', '0', 8000, 8000, 272, '1');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, res_fire, res_water, res_earth, res_spirit, res_air, player_mp, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, lore, bindonpickup) 
VALUES (743, 0, 'Super Powerful Doom Robe', 10, 1, 450, 80, 80, 80, 80, 80, 80, 80, 80, 80, 12000, 12000, 120285, 22, 50, 0, 0, 273, '1', '1');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (744, 0, 'Powerful Mischiefs Claw of Destruction', 200, 2, 6, 0, 120050, 15, 1, 59, '1', 50, 3000, 3000, 200000000, 275, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, player_mp, player_hp,
  min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (745, 0, 'Powerful Mischiefs Shield of Destruction', 0, 1, 0, 0, 120262, 48, 4, 59, '1', 50, 200, 2000, 2000, 200000000, 274, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
  min_level, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (746, 0, 'Powerful Wizards Staff of Enchantment', 300, 2, 8, 0, 120228, 29, 3, 47, '1', 50, 10000, 200000000, 217, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
  min_level, stat_ac, player_hp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (747, 0, 'Powerful Knights Sword of Awe', 500, 2, 8, 0, 120286, 22, 4, 55, '1', 50, 200, 10000, 200000000, 218, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (748, 0, 'Powerful Clerics Testament of Nobility', 150, 2, 6, 0, 120230, 30, 4, 31, '1', 50, 2000, 4000, 200000000, 268, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, player_mp, player_hp, 
  min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (749, 0, 'Powerful Clerics Ward of Nobility', 0, 1, 0, 0, 120259, 42, 4, 31, '1', 50, 200, 2000, 2000, 200000000, 274, '1', 46, 27, 6, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (750, 0, 'Super Powerful Mischiefs Claw of Destruction', 999, 2, 6, 0, 120050, 15, 1, 59, '1', 50, 6000, 6000, 200000000, 275, '1',  0, 0, 0, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, player_mp, player_hp,
  min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (751, 0, 'Super Powerful Mischiefs Shield of Destruction', 0, 1, 0, 0, 120262, 48, 4, 59, '1', 50, 200, 4000, 4000, 200000000, 274, '1',  0, 0, 0, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
  min_level, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (752, 0, 'Super Powerful Wizards Staff of Enchantment', 999, 2, 8, 0, 120228, 29, 3, 47, '1', 50, 20000, 200000000, 217, '1', 6, 69, 138, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
  min_level, stat_ac, player_hp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (753, 0, 'Super Powerful Knights Sword of Awe', 999, 2, 8, 0, 120286, 22, 4, 55, '1', 50, 225, 20000, 200000000, 275, '1', 173, 64, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (754, 0, 'Super Powerful Clerics Testament of Nobility', 999, 2, 6, 0, 120230, 30, 4, 31, '1', 50, 4000, 8000, 200000000, 268, '1', 237, 221, 47 , 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, stat_ac, player_mp, player_hp, 
  min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (755, 0, 'Super Powerful Clerics Ward of Nobility', 0, 1, 0, 0, 120259, 42, 4, 31, '1', 50, 250, 4000, 4000, 200000000, 274, '1', 237, 221, 47 , 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (756, 0, 'Powerful Dagger of Contemption', 120, 2, 5, 0, 120047, 11, 4, 50, 10, 10, 10, 1000, 2000, 1, '1', '1', 46, 27, 6, 200, 275);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonpickup, spell_effect_id) 
VALUES (757, 0, 'Powerful Ward of Destruction', 0, 1, 0, 0, 120261, 46, 27, 6, 200, 1400, 1400, '1', 97, 90, 90, 160, '1', 274);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_int, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (758, 0, 'BuhZerks Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 200, 40, 1200, '1', 14000, 14000, 14000, 1200, '1', 20000000, 72, 47);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (759, 0, 'BuhZerks Robes', 10, 1, 600, 105, 15, 390, 1276, 120285, 22, 50, 15, 150000, 14000, 14000, 14000, 1200, 72);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, player_hp, player_mp,
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, event, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (760, 0, 'BuhZerks Cap', 0, 1, 215, 0, 26, 54, 600, 300, 120033, 6, 50, 15, 150000, '0', '0', 14000, 14000, 14000, 1200, 72);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type,
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id) 
VALUES (761, 0, 'BuhZerks Stick of Pain', 280, 2, 5, 0, 120227, 28, 4, 50, 10, 30, 1000, 4000, 15, '1', '1', 20000000, 72);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Magus */
VALUES (762, 0, 'BuhZerks Slippers', 12, 3, 150, 0, 0, 50, 50, 0, 4000, '1', '1', '1', 120007, 5, 50, 47, 0, 71, 255, 255, 255, 200);




INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (763, 0, 'BuhZerks Legplates', 11, 3, 360, 45, 45, 45, 45, 525, 450, 120036, 5, 50, 0, 150000, 255, 255, 255, 200, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_int, stat_dex, player_hp, player_mp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (764, 0, 'GM Robes', 10, 1, 600, 105, 15, 99999999, 9999999, 120285, 22, 50, 31, 150000, 16000, 16000, 13000, 1200, 277);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (765, 3, 'Scroll: GM Death Strike', 0, 0, 168, 20000000, 59, 50, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (766, 3, 'Scroll: Royal Healing', 0, 0, 169, 20000000, 31, 50, '1', 120110, 0, '1', 20000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (767, 3, 'Scroll: Powerful Covenant', 0, 0, 170, 10000000, 47, 50, '1', 120110, 0, '1', 400000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
        stat_ac, stat_str, stat_sta, stat_dex, player_hp, 
        graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (768, 0, 'DK Chestplate', 10, 3, 650, 60, 60, 60, 900, 120009, 13, 50, 51, 150000, 255, 69 , 0 , 160, 71);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (769, 0, 'DK Moon Shield', 0, 1, 0, 0, 120259, 57, 4, 50, 250, 20, 20, 50, 600, 600, '1', 255, 69 , 0 , 160, '1', 20000000, 268, 59);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_sta, stat_int, player_hp, player_mp, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (770, 0, 'DK Snake Helmet', 0, 1, 180, 32, 40, 2100, 1400, 120030, 4, 50, 1, 0, '1', 72, 255, 69 , 0 , 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (771, 0, 'DK Dagger', 500, 2, 5, 0, 120211, 27, 4, 50, 40, 40, 100, 2400, 2400, 59, '1', '1', 20000000, 71, 255, 69 , 0 , 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (772, 0, 'Powerful Rogue Helm', 0, 3, 150, 25, 25, 0, 0, 3000, 3000, 120022, 10, 50, 59, 0, '1', '1', '1', 280, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (773, 0, 'Powerful Warrior Helm', 0, 3, 150, 0, 50, 0, 0, 6000, 0, 120023, 2, 50, 55, 0, '1', '1', '1', 280, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (774, 0, 'Powerful Magus Crown', 0, 3, 150, 50, 0, 0, 0, 0, 6000, 120032, 5, 50, 47, 0, '1', '1', '1', 280, 46, 27, 6, 200);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (775, 0, 'Powerful Priest Crown', 0, 3, 150, 30, 20, 0, 0, 2000, 4000, 120031, 8, 50, 31, 0, '1', '1', '1', 280, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (776, 0, 'Super Powerful Rogue Shades', 0, 3, 200, 25, 25, 0, 0, 6000, 6000, 120048, 11, 50, 59, 0, '1', '1', '1', 281, 0, 0, 0, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (777, 0, 'Super Powerful Warrior Shades', 0, 3, 250, 0, 50, 0, 0, 12000, 0, 120048, 11, 50, 55, 0, '1', '1', '1', 281, 173, 64, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (778, 0, 'Super Powerful Magus Shades', 0, 3, 200, 50, 0, 0, 0, 0, 12000, 120048, 11, 50, 47, 0, '1', '1', '1', 281, 6, 69, 138, 200);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (779, 0, 'Super Powerful Priest Shades', 0, 3, 200, 30, 20, 0, 0, 4000, 8000, 120048, 11, 50, 31, 0, '1', '1', '1', 281, 237, 221, 47 , 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (780, 0, 'Powerful Rogue Legplates', 11, 3, 225, 4000, 4000, 120036, 5, 50, 59, 0, 200000000, 212, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (781, 0, 'Powerful Warrior Legplates', 11, 3, 225, 8000, 120038, 2, 50, 55, 0, 200000000, 212, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp,  /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (782, 0, 'Powerful Priest Leggings', 11, 1, 225, 3000, 5000, 120001, 1, 50, 31, 0, 200000000, 283, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (783, 0, 'Powerful Magus Leggings', 11, 1, 225, 8000, 120000, 6, 50, 47, 0, 200000000, 71, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (784, 0, 'Super Powerful Rogue Legplates', 11, 3, 225, 8000, 8000, 120036, 5, 50, 59, 0, 200000000, 283, '1', 0, 0, 0, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (785, 0, 'Super Powerful Warrior Legplates', 11, 3, 225, 16000, 120038, 2, 50, 55, 0, 200000000, 283, '1', 173, 64, 5, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp,  /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (786, 0, 'Super Powerful Priest Leggings', 11, 1, 225, 6000, 10000, 120001, 1, 50, 31, 0, 200000000, 283, '1', 237, 221, 47 , 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (787, 0, 'Super Powerful Magus Leggings', 11, 1, 225, 16000, 120000, 6, 50, 47, 0, 200000000, 72, '1', 6, 69, 138, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (788, 2, 'Ghost Poo', 0, 0, 120124, 0, 99, 6500, 255,255,255, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (789, 2, 'Diarrhea Ghost Poo', 0, 0, 120124, 0, 99, 12000, 0,0,0, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (790, 2, 'Soft Serv Poo', 0, 0, 120124, 0, 99, 15000, 4,33,222, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	graphic_tile, graphic_equip, stack_size, item_value, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (791, 2, 'Fruit Rollup Poo', 0, 0, 120124, 0, 99, 30000, 5000,3500,10000, 12000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup) 
VALUES (792, 0, 'Powerful Rogue Chestplate', 10, 3, 450, 5000, 5000, 120011, 10, 50, 59, 0, 200000000, 284, '1');
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (793, 0, 'Powerful Warrior Chestplate', 10, 3, 450, 10000, 120034, 10, 50, 55, 0, 66, 69, 189, 120, 200000000, 284, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, player_hp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (794, 0, 'Powerful Priest Tunic', 10, 1, 450, 4000, 6000, 120026, 7, 50, 31, 0, 49, 65, 148, 160, 200000000, 288, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup) 
VALUES (795, 0, 'Powerful Magus Tunic', 10, 1, 450, 10000, 120025, 11, 50, 47, 0, 200000000, 290, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (796, 0, 'Super Powerful Rogue Chestplate', 10, 3, 450, 10000, 10000, 120245, 21, 50, 59, 0, 200000000, 287, '1',  0, 0, 0, 200);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (797, 0, 'Super Powerful Warrior Chestplate', 10, 3, 450, 20000, 120245, 21, 50, 55, 0, 173, 64, 5, 200, 200000000, 287, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, player_hp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (798, 0, 'Super Powerful Priest Robe', 10, 1, 450, 8000, 12000, 120285, 22, 50, 31, 0,  237, 221, 47 , 200, 200000000, 289, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (799, 0, 'Super Powerful Magus Robe', 10, 1, 450, 20000, 120285, 22, 50, 47, 0, 200000000, 291, '1', 6, 69, 138, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, bindonequip, spell_effect_id, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (800, 0, 'Powerful Slayers Armguards', 6, 0, 0, 120236, 0, 50, 100, 4000, 4000, '1', '1', 292, 200000000, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (801, 0, 'Powerful Slayers Belt', 8, 0, 0, 120201, 0, 50, 80, 4000, 4000, '1', 292, '1', 200000000, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (802, 0, 'Powerful Slayers Gloves', 9, 0, 0, 120210, 0, 50, 80, 4000, 4000, '1', 292, '1', 200000000, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (803, 0, 'Powerful Terror Necklace', 5, 0, 0, 120086, 0, 50, 75, 4000, 4000, '1', 294, '1', 200000000, 97, 90, 90, 160);

iNSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, bindonequip, spell_effect_id, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (804, 0, 'Super Powerful Slayers Armguards', 6, 0, 0, 120236, 0, 50, 100, 8000, 8000, '1', '1', 293, 200000000, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (805, 0, 'Super Powerful Slayers Belt', 8, 0, 0, 120201, 0, 50, 80, 8000, 8000, '1', 293, '1', 200000000, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (806, 0, 'Super Powerful Slayers Gloves', 9, 0, 0, 120210, 0, 50, 80, 8000, 8000, '1', 293, '1', 200000000, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (807, 0, 'Super Powerful Terror Necklace', 5, 0, 0, 120086, 0, 50, 75, 8000, 8000, '1', 295, '1', 200000000, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (808, 3, 'Scroll: Royal Arcane Blast', 0, 0, 171, 30000000, 47, 50, '1', 120110, 0);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (809, 3, 'Scroll: Royal Spirit Strike', 0, 0, 172, 30000000, 55, 50, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (810, 3, 'Rune: Powerful Knights Blessing', 0, 0, 176, 0, 55, 50, '1', 120152, 0, '1', 200000000, 46, 27, 6, 200);
 
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (811, 3, 'Rune: Powerful Wizards Curse', 0, 0, 174, 0, 47, 50, '1', 120154, 0, '1', 200000000, 46, 27, 6, 200);
 
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (812, 3, 'Rune: Powerful Mischiefs Craft', 0, 0, 173, 0, 59, 50, '1', 120153, 0, '1', 200000000, 46, 27, 6, 200);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (813, 3, 'Rune: Powerful Clerics Blessing', 0, 0, 175, 0, 31, 50, '1', 120155, 0, '1', 200000000, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (814, 3, 'Scroll: Ancient Healing 3', 0, 0, 177, 0, 31, 50, '1', 120110, 0, '1', 200000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	graphic_tile, graphic_equip, min_level, stat_ac, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air,
	graphic_a, spell_effect_id) 
VALUES (815, 0, 'GM Ring', 0, 4, 0, 120063, 0, 0, 3000, 5000000, 5000000, '1', 2000, 2000, 2000, 2000, 2000, 200, 277);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	graphic_tile, graphic_equip, min_level, stat_ac, player_hp, player_mp, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air,
	graphic_a, spell_effect_id) 
VALUES (816, 0, 'GM Ring 2', 0, 4, 0, 120063, 0, 0, 3000, 25000, 25000, '1', 2000, 2000, 2000, 2000, 2000, 200, 277);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup, min_experience) 
VALUES (817, 3, 'Scroll: Tower Teleport', 0, 0, 178, 650000, 0, 50, '1', 120110, 0, '1', 4);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (818, 0, 'Assassin Chestplate', 10, 3, 450, 50000, 50000, 120245, 21, 50, 59, 
5000000, 2000000000, 285, '1',  138, 8, 8, 200);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (819, 0, 'Assassin Shades', 0, 3, 200, 25, 25, 0, 0, 50000, 50000, 120048, 11, 50, 59, 
5000000, '1', '1', '1', 281, 138, 8, 8, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) /* Rogue */
VALUES (820, 0, 'Assassin Boots', 12, 3, 200, 0, 0, 0, 200, 50000, 50000, '1', '1', '1', 120041, 4, 50, 59, 
5000000, 268, 138, 8, 8, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (821, 0, 'Assassin Legplates', 11, 3, 225, 50000, 50000, 120036, 5, 50, 59, 
5000000, 2000000000, 283, '1', 138, 8, 8, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (822, 0, 'Assassin Shield', 0, 1, 0, 
5000000, 120259, 57, 4, 50, 250, 20, 20, 50, 50000, 50000, '1',  0, 0, 0, 200, '1', 2000000000, 268, 59);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (823, 0, 'Assassin Dagger', 999, 2, 5, 
5000000, 120266, 49, 4, 50, 40, 40, 100, 50000, 50000, 59, '1', '1', 2000000000, 275,  0, 0, 0, 200);



/* Warrior */

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_str, player_hp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (824, 0, 'Knight Axe', 999, 2, 5, 
5000000, 120282, 55, 4, 50, 200, 40, 30, 100000, 55, '1', '1', 2000000000, 275, 115, 7, 1, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) /* Warrior */
VALUES (825, 0, 'Knight Boots', 12, 3, 200, 0, 100, 0, 0, 100000, 0, '1', '1', '1', 120043, 2, 50, 55, 
5000000, 268, 16, 64, 120, 200, 2000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) 
VALUES (826, 0, 'Knight Shades', 0, 3, 250, 0, 50, 0, 0, 100000, 0, 120048, 11, 50, 55, 
5000000, '1', '1', '1', 281, 16, 64, 120, 200, 2000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (827, 0, 'Knight Legplates', 11, 3, 225, 100000, 120038, 2, 50, 55, 
5000000, 2000000000, 283, '1', 16, 64, 120, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (828, 0, 'Knight Chestplate', 10, 3, 450, 100000, 120245, 21, 50, 55, 
5000000, 16, 64, 120, 200, 2000000000, 287, '1');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, player_hp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (829, 0, 'Knight Shield', 0, 1, 0, 
5000000, 120259, 57, 4, 50, 300, 40, 100000, '1', 115, 7, 1, 200, '1', 2000000000, 269, 55);


/* Priest */

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (830, 0, 'Holy Shield', 0, 1, 0, 
5000000, 120259, 57, 4, 50, 200, 10, 30, 40000, 60000, '1', 130, 76, 0, 200, '1', 2000000000, 268, 31);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) /* Priest */
VALUES (831, 0, 'Holy Slippers', 12, 3, 200, 120, 80, 0, 0, 50000, 50000, '1', '1', '1', 120005, 1, 50, 31, 
5000000, 268, 255, 255, 255, 200 , 2000000000);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (832, 0, 'Holy Bible', 999, 2, 6, 
5000000, 120230, 30, 4, 31, '1', 50, 50000, 50000, 2000000000, 268, '1', 130, 76, 0, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp,  /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (833, 0, 'Holy Leggings', 11, 1, 225, 50000, 50000, 120001, 1, 50, 31, 
5000000, 2000000000, 283, '1', 255, 255, 255, 200 );


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, player_hp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (834, 0, 'Holy Robe', 10, 1, 450, 50000, 50000, 120285, 22, 50, 31, 
5000000,  255, 255, 255, 200 , 2000000000, 289, '1');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) 
VALUES (835, 0, 'Holy Shades', 0, 3, 200, 30, 20, 0, 0, 50000, 50000, 120048, 11, 50, 31, 
5000000, '1', '1', '1', 281, 255, 255, 255, 200 , 2000000000);


/* magus */

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (836, 0, 'Arcane Robe', 10, 1, 450, 100000, 120285, 22, 50, 47, 
5000000, 2000000000, 291, '1', 46, 107, 15, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (837, 0, 'Arcane Leggings', 11, 1, 225, 100000, 120000, 6, 50, 47, 
5000000, 2000000000, 72, '1', 46, 107, 15, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) 
VALUES (838, 0, 'Arcane Shades', 0, 3, 200, 50, 0, 0, 0, 0, 100000, 120048, 11, 50, 47, 
5000000, '1', '1', '1', 281, 46, 107, 15, 200,  2000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
  min_level, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (839, 0, 'Arcane Staff', 999, 2, 8, 
5000000, 120228, 29, 3, 47, '1', 50, 100000, 2000000000, 217, '1', 115, 109, 93, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) /* Magus */
VALUES (840, 0, 'Arcane Slippers', 12, 3, 200, 0, 0, 100, 100, 0, 100000, '1', '1', '1', 120007, 5, 50, 47, 
5000000, 72, 46, 107, 15, 200, 2000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_int, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (841, 0, 'Arcane Shield', 0, 1, 0, 
5000000, 120259, 57, 4, 50, 200, 40, 100000, '1', 115, 109, 93, 200, '1', 2000000000, 217, 47);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (842, 0, 'Elite Assassin Chestplate', 10, 3, 450, 200000, 200000, 120245, 21, 50, 59, 
25000000, 5000000000, 285, '1',  138, 8, 8, 100);
	
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) 
VALUES (843, 0, 'Elite Assassin Shades', 0, 3, 200, 25, 25, 0, 0, 200000, 200000, 120048, 11, 50, 59, 
25000000, '1', '1', '1', 281, 138, 8, 8, 100, 5000000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) /* Rogue */
VALUES (844, 0, 'Elite Assassin Boots', 12, 3, 200, 0, 0, 0, 200, 200000, 200000, '1', '1', '1', 120041, 4, 50, 59, 
25000000, 268, 138, 8, 8, 100, 5000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (845, 0, 'Elite Assassin Legplates', 11, 3, 225, 200000, 200000, 120036, 5, 50, 59, 
25000000, 5000000000, 283, '1', 138, 8, 8, 100);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, stat_dex, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (846, 0, 'Elite Assassin Shield', 0, 1, 0, 
25000000, 120259, 57, 4, 50, 250, 20, 20, 50, 200000, 200000, '1',  0, 0, 0, 100, '1', 5000000000, 268, 59);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_sta, stat_int, stat_dex, player_hp, player_mp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (847, 0, 'Elite Assassin Dagger', 999, 2, 5, 
25000000, 120266, 49, 4, 50, 40, 40, 100, 200000, 200000, 59, '1', '1', 5000000000, 275,  0, 0, 0, 100);



/* Warrior */

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_str, player_hp, class_restrictions, 
	lore, bindonequip, min_experience, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (848, 0, 'Elite Knight Axe', 999, 2, 5, 
25000000, 120282, 55, 4, 50, 300, 40, 30, 400000, 55, '1', '1', 5000000000, 317, 115, 7, 1, 100);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) /* Warrior */
VALUES (849, 0, 'Elite Knight Boots', 12, 3, 200, 0, 100, 0, 0, 400000, 0, '1', '1', '1', 120043, 4, 50, 55, 
25000000, 268, 16, 64, 120, 100, 5000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) 
VALUES (850, 0, 'Elite Knight Shades', 0, 3, 250, 0, 50, 0, 0, 400000, 0, 120048, 11, 50, 55, 
25000000, '1', '1', '1', 281, 16, 64, 120, 100, 5000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (851, 0, 'Elite Knight Legplates', 11, 3, 225, 400000, 120038, 5, 50, 55, 
25000000, 5000000000, 269, '1', 16, 64, 120, 100);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (852, 0, 'Elite Knight Chestplate', 10, 3, 450, 400000, 120245, 21, 50, 55, 
25000000, 16, 64, 120, 100, 5000000000, 287, '1');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, player_hp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (853, 0, 'Elite Knight Shield', 0, 1, 0, 
25000000, 120259, 57, 4, 50, 250, 40, 400000, '1', 115, 7, 1, 100, '1', 5000000000, 269, 55);


/* Priest */

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_sta, stat_int, player_hp, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (854, 0, 'Elite Holy Shield', 0, 1, 0, 
25000000, 120259, 57, 4, 50, 200, 10, 30, 200000, 200000, '1', 130, 76, 0, 100, '1', 5000000000, 268, 31);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) /* Priest */
VALUES (855, 0, 'Elite Holy Slippers', 12, 3, 200, 120, 80, 0, 0, 200000, 200000, '1', '1', '1', 120005, 1, 50, 31, 
25000000, 268, 255, 255, 255, 100 , 5000000000);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, min_level, 
  player_hp, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (856, 0, 'Elite Holy Bible', 999, 2, 6, 
25000000, 120230, 30, 4, 31, '1', 50, 200000, 200000, 5000000000, 268, '1', 130, 76, 0, 100);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_hp, player_mp,  /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (857, 0, 'Elite Holy Leggings', 11, 1, 225, 200000, 200000, 120001, 1, 50, 31, 
25000000, 5000000000, 283, '1', 255, 255, 255, 100 );


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, player_hp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, graphic_r, graphic_g, graphic_b, graphic_a, min_experience, spell_effect_id, bindonpickup) 
VALUES (858, 0, 'Elite Holy Robe', 10, 1, 450, 200000, 200000, 120285, 22, 50, 31, 
25000000,  255, 255, 255, 100 , 5000000000, 289, '1');


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) 
VALUES (859, 0, 'Elite Holy Shades', 0, 3, 200, 30, 20, 0, 0, 200000, 200000, 120048, 11, 50, 31, 
25000000, '1', '1', '1', 281, 255, 255, 255, 100 , 5000000000);


/* magus */

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (860, 0, 'Elite Arcane Robe', 10, 1, 450, 400000, 120285, 22, 50, 47, 
25000000, 5000000000, 291, '1', 46, 107, 15, 100);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, min_experience, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (861, 0, 'Elite Arcane Leggings', 11, 1, 225, 400000, 120000, 6, 50, 47, 
25000000, 5000000000, 72, '1', 46, 107, 15, 100);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) 
VALUES (862, 0, 'Elite Arcane Shades', 0, 3, 200, 50, 0, 0, 0, 0, 400000, 120048, 11, 50, 47, 
25000000, '1', '1', '1', 281, 46, 107, 15, 100,  5000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, class_restrictions, lore, 
  min_level, player_mp, min_experience, spell_effect_id, bindonequip, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (863, 0, 'Elite Arcane Staff', 999, 2, 8, 
25000000, 120228, 21, 3, 47, '1', 50, 400000, 5000000000, 217, '1', 115, 109, 93, 100);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, lore, bindonpickup, bindonequip, 
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a, min_experience) /* Magus */
VALUES (864, 0, 'Elite Arcane Slippers', 12, 3, 200, 0, 0, 100, 100, 0, 400000, '1', '1', '1', 120007, 5, 50, 47, 
25000000, 72, 46, 107, 15, 200, 5000000000);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, min_level, stat_ac, stat_int, player_mp,
	lore, graphic_r, graphic_g, graphic_b, graphic_a, bindonequip, min_experience, spell_effect_id, class_restrictions) 
VALUES (865, 0, 'Elite Arcane Shield', 0, 1, 0, 
25000000, 120259, 57, 4, 50, 200, 40, 400000, '1', 115, 109, 93, 100, '1', 5000000000, 217, 47);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip, bindonpickup) 
VALUES (866, 3, 'Rune: Elite Holy Blessings', 0, 0, 179, 0, 31, 50, '1', 120151, 0, '1');
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup) 
VALUES (867, 3, 'Rune: Elite Knight Awe', 0, 0, 180, 0, 55, 50, '1', 120148, 0, '1');

 INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup) 
VALUES (868, 3, 'Rune: Elite Assassin Death', 0, 0, 181, 0, 59, 50, '1', 120149, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
  learn_spell_id, item_value, class_restrictions, min_level, lore,
  graphic_tile, graphic_equip, bindonpickup) 
VALUES (869, 3, 'Rune: Elite Arcane Conflagration', 0, 0, 182, 0, 47, 50, '1', 120150, 0, '1');

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (870, 0, 'Powerful Bracelet of Fire', 0, 4, 0, 0, 120070, 40, 40, 40, 80, 40, 800, 400, 50, '1', 70, 0, 0, 0, 0, 400000000, '1', 177, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (871, 0, 'Powerful Bracelet of Earth', 0, 4, 0, 0, 120072, 10, 40, 40, 80, 40, 400, 800, 50, '1', 0, 0, 70, 0, 0, 400000000, '1', 71, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (872, 0, 'Powerful Bracelet of Air', 0, 4, 0, 0, 120074, 20, 40, 40, 50, 70, 500, 700, 50, '1', 0, 0, 0, 0, 70, 400000000, '1', 308, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (873, 0, 'Powerful Bracelet of Water', 0, 4, 0, 0, 120076, 40, 40, 40, 60, 40, 600, 600, 50, '1', 0, 70, 0, 0, 0, 400000000, '1', 309, 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (874, 0, 'Powerful Bracelet of Spirit', 0, 4, 0, 0, 120079, 40, 60, 60, 60, 60, 600, 600, 50, '1', 0, 0, 0, 70, 0, 400000000, '1', 310, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (875, 0, 'Super Powerful Bracelet of Fire', 0, 4, 0, 0, 120070, 80, 80, 80, 80, 40, 20000, 10000, 50, '1', 70, 0, 0, 0, 0, 400000000, '1', 177, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (876, 0, 'Super Powerful Bracelet of Earth', 0, 4, 0, 0, 120072, 10, 40, 40, 80, 40, 10000, 20000, 50, '1', 0, 0, 70, 0, 0, 400000000, '1', 71, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (877, 0, 'Super Powerful Bracelet of Air', 0, 4, 0, 0, 120074, 20, 40, 40, 50, 70, 10000, 21000, 50, '1', 0, 0, 0, 0, 70, 400000000, '1', 308, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (878, 0, 'Super Powerful Bracelet of Water', 0, 4, 0, 0, 120076, 40, 40, 40, 60, 40, 20000, 20000, 50, '1', 0, 70, 0, 0, 0, 400000000, '1', 309, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, 
	lore, res_fire, res_water, res_earth, res_spirit, res_air, min_experience, bindonequip, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (879, 0, 'Super Powerful Bracelet of Spirit', 0, 4, 0, 0, 120079, 40, 60, 60, 60, 60, 20000, 20000, 50, '1', 0, 0, 0, 70, 0, 400000000, '1', 310, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id) 
VALUES (880, 0, 'Hope', 0, 4, 0, 250, 120060, 15, 3, 3, 3, 3, 10, 5, 10, '0', '1', 311);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (881, 0, 'Powerful Hope', 0, 4, 0, 250, 120060, 15, 3, 3, 3, 3, 10, 5, 10, '0', '1', 97, 90, 90, 160, 312);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
        item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, graphic_r, graphic_g, graphic_b, graphic_a, spell_effect_id) 
VALUES (882, 0, 'Super Powerful Hope', 0, 4, 0, 250, 120060, 15, 3, 3, 3, 3, 10, 5, 10, '0', '1', 46, 27, 6, 200, 313);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience) 
VALUES (883, 0, 'Prison Cloak', 7, 0, 0, 110034, 0, 50, 30, 5, 5, 5, 5, 500, 500, '1', 72, '1', 100000000);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (884, 0, 'Powerful Prison Cloak', 7, 0, 0, 110034, 0, 50, 30, 5, 5, 5, 5, 2000, 2000, '1', 314, '1', 100000000, 97, 90, 90, 160);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, min_level, 
	stat_ac, stat_str, stat_sta, stat_int, stat_dex, player_hp, player_mp, 
	lore, spell_effect_id, bindonequip, min_experience, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (885, 0, 'Super Powerful Prison Cloak', 7, 0, 0, 110034, 0, 50, 30, 5, 5, 5, 5, 9000, 9000, '1', 315, '1', 100000000, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (886, 0, 'Powerful Prison Gloves', 0, 9, 0, 0, 120210, 70, 10, 10, 10, 10, 500, 500, 1, '0', '1', 72, '1', 97, 90, 90, 160);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, stat_ac, stat_str, stat_dex, stat_int, stat_sta, player_hp, player_mp, min_level, event, lore, spell_effect_id, bindonpickup, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (887, 0, 'Super Powerful Prison Gloves', 0, 9, 0, 0, 120210, 70, 10, 10, 10, 10, 500, 500, 1, '0', '1', 314, '1', 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Rogue */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (888, 0, 'Prison Rogue Helm', 0, 3, 150, 25, 25, 0, 0, 30000, 30000, 120022, 10, 50, 59, 0, '1', '1', '1', 316, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Warrior */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (889, 0, 'Prison Warrior Helm', 0, 3, 150, 0, 50, 0, 0, 60000, 0, 120023, 2, 50, 55, 0, '1', '1', '1', 316, 46, 27, 6, 200);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Magus */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (890, 0, 'Prison Magus Crown', 0, 3, 150, 50, 0, 0, 0, 0, 60000, 120032, 5, 50, 47, 0, '1', '1', '1', 316, 46, 27, 6, 200);
  
INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	stat_ac, stat_int, stat_sta, stat_str, stat_dex, player_hp, player_mp, /* Priest */
	graphic_tile, graphic_equip, min_level, class_restrictions, item_value, lore, bindonequip, bindonpickup, spell_effect_id, graphic_r, graphic_g, graphic_b, graphic_a) 
VALUES (891, 0, 'Prison Priest Crown', 0, 3, 150, 30, 20, 0, 0, 20000, 40000, 120031, 8, 50, 31, 0, '1', '1', '1', 316, 46, 27, 6, 200);


INSERT INTO item_templates (item_template_id, item_usetype, item_name, weapon_damage, item_slot, item_type, 
	item_value, graphic_tile, graphic_equip, body_state, lore, min_level, stat_str, stat_sta, stat_dex, player_hp, player_mp, spell_effect_id) 
VALUES (892, 0, 'Prison Dagger', 999, 2, 6, 25000, 120704, 35, 4, '1', 1, 20, 40, 40, 1000, 1000, 316);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (893, 3, 'Scroll: Royal Arcane Blast', 0, 0, 183, 30000000, 47, 50, '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (894, 3, 'Rune: Omega Arcane Assault', 0, 0, 186, 20000000, 47, 50, '1', 120146, 0);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (895, 3, 'Rune: Omega Fearsome Lash', 0, 0, 185, 20000000, 59, 50, '1', 120144, 0);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore,
	graphic_tile, graphic_equip) 
VALUES (896, 3, 'Rune: Omega Sunder of Spirits', 0, 0, 187, 20000000, 55, 50, '1', 120145, 0);



INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore, bindonpickup,
	graphic_tile, graphic_equip) 
VALUES ( 897, 3, 'Scroll: Omega Group Healing', 0, 0, 184, 10000000, 31, 50, '1', '1', 120110, 0);

INSERT INTO item_templates (item_template_id, item_usetype, item_name, item_slot, item_type, 
	learn_spell_id, item_value, class_restrictions, min_level, lore, bindonpickup,
	graphic_tile, graphic_equip) 
VALUES ( 898, 3, 'Scroll: Holy Hammer', 0, 0, 188, 10000000, 31, 50, '1', '1', 120110, 0);