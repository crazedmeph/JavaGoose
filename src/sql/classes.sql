USE Goose;

DROP TABLE IF EXISTS classes;
CREATE TABLE classes (
  class_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  class_name VARCHAR(32) NOT NULL,
  ac_multiplier DECIMAL(9,2) DEFAULT 1 NOT NULL,
  vita_cost BIGINT DEFAULT 200000 NOT NULL,
  mana_cost BIGINT DEFAULT 200000 NOT NULL
);

INSERT INTO classes (class_id, class_name, ac_multiplier, vita_cost, mana_cost) VALUES (1, 'Commoner', 1, 10000, 10000);
INSERT INTO classes (class_id, class_name, ac_multiplier, vita_cost, mana_cost) VALUES (2, 'Rogue', 0.65, 150000, 150000);
INSERT INTO classes (class_id, class_name, ac_multiplier, vita_cost, mana_cost) VALUES (3, 'Warrior', 1, 100000, 200000);
INSERT INTO classes (class_id, class_name, ac_multiplier, vita_cost, mana_cost) VALUES (4, 'Magus', 0.5, 200000, 100000);
INSERT INTO classes (class_id, class_name, ac_multiplier, vita_cost, mana_cost) VALUES (5, 'Priest', 0.7, 180000, 120000);

DROP TABLE IF EXISTS class_info;
CREATE TABLE class_info (
  class_info_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  class_id INT NOT NULL,
  level SMALLINT NOT NULL,
  level_up_exp BIGINT DEFAULT 0 NOT NULL,
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
  hp_percent_regen DECIMAL(9,4) DEFAULT 0 NOT NULL,
  hp_static_regen INT DEFAULT 0 NOT NULL,
  mp_percent_regen DECIMAL(9,4) DEFAULT 0 NOT NULL,
  mp_static_regen INT DEFAULT 0 NOT NULL,
  haste DECIMAL(9,4) DEFAULT 0 NOT NULL,
  spell_damage DECIMAL(9,4) DEFAULT 0 NOT NULL,
  spell_crit DECIMAL(9,4) DEFAULT 0 NOT NULL,
  melee_damage DECIMAL(9,4) DEFAULT 0 NOT NULL,
  melee_crit DECIMAL(9,4) DEFAULT 0 NOT NULL,
  damage_reduce DECIMAL(9,4) DEFAULT 0 NOT NULL
);

/* Commoner */
INSERT INTO class_info (class_id, level, player_hp, player_mp, player_sp) VALUES (1, 1, 30, 30, 0);

INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,1,200,30,30);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,2,800,38,38);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,3,2000,50,50);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,4,4000,66,66);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,5,7000,86,86);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,6,11200,110,110);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,7,16800,138,138);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,8,24000,170,170);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,9,33000,206,206);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,10,44000,246,246);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,11,57200,290,290);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,12,72800,338,338);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,13,91000,390,390);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,14,112000,446,446);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,15,136000,506,506);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,16,163200,570,570);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,17,193800,638,638);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,18,228000,710,710);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,19,266000,786,786);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,20,308000,866,866);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,21,354200,950,950);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,22,404800,1038,1038);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,23,460000,1130,1130);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,24,520000,1226,1226);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,25,585000,1326,1326);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,26,655200,1430,1430);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,27,730800,1538,1538);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,28,812000,1650,1650);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,29,899000,1766,1766);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,30,992000,1886,1886);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,31,1091200,2010,2010);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,32,1196800,2138,2138);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,33,1309000,2270,2270);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,34,1428000,2406,2406);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,35,1554000,2546,2546);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,36,1687200,2690,2690);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,37,1827800,2838,2838);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,38,1976000,2990,2990);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,39,2132000,3146,3146);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,40,2296000,3306,3306);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,41,2468200,3470,3470);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,42,2648800,3638,3638);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,43,2838000,3810,3810);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,44,3036000,3986,3986);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,45,3243000,4166,4166);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,46,3459200,4350,4350);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,47,3684800,4538,4538);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,48,3920000,4730,4730);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,49,4165000,4926,4926);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (2,50,0,5200,5200);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,1,200,30,30,10);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,2,800,42,36,20);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,3,2000,60,45,30);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,4,4000,84,57,40);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,5,7000,114,72,50);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,6,11200,150,90,60);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,7,16800,192,111,70);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,8,24000,240,135,80);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,9,33000,294,162,90);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,10,44000,354,192,100);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,11,57200,420,225,110);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,12,72800,492,261,120);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,13,91000,570,300,130);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,14,112000,654,342,140);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,15,136000,744,387,150);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,16,163200,840,435,160);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,17,193800,942,486,170);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,18,228000,1050,540,180);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,19,266000,1164,597,190);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,20,308000,1284,657,200);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,21,354200,1410,720,210);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,22,404800,1542,786,220);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,23,460000,1680,855,230);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,24,520000,1824,927,240);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,25,585000,1974,1002,250);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,26,655200,2130,1080,260);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,27,730800,2292,1161,270);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,28,812000,2460,1245,280);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,29,899000,2634,1332,290);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,30,992000,2814,1422,300);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,31,1091200,3000,1515,310);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,32,1196800,3192,1611,320);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,33,1309000,3390,1710,330);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,34,1428000,3594,1812,340);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,35,1554000,3804,1917,350);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,36,1687200,4020,2025,360);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,37,1827800,4242,2136,370);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,38,1976000,4470,2250,380);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,39,2132000,4704,2367,390);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,40,2296000,4944,2487,400);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,41,2468200,5190,2610,410);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,42,2648800,5442,2736,420);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,43,2838000,5700,2865,430);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,44,3036000,5964,2997,440);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,45,3243000,6234,3132,450);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,46,3459200,6510,3270,460);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,47,3684800,6792,3411,470);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,48,3920000,7080,3555,480);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,49,4165000,7374,3702,490);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp,stat_ac) VALUES (3,50,0,7700,3900,500);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,1,200,30,30);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,2,800,36,42);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,3,2000,45,60);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,4,4000,57,84);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,5,7000,72,114);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,6,11200,90,150);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,7,16800,111,192);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,8,24000,135,240);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,9,33000,162,294);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,10,44000,192,354);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,11,57200,225,420);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,12,72800,261,492);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,13,91000,300,570);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,14,112000,342,654);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,15,136000,387,744);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,16,163200,435,840);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,17,193800,486,942);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,18,228000,540,1050);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,19,266000,597,1164);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,20,308000,657,1284);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,21,354200,720,1410);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,22,404800,786,1542);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,23,460000,855,1680);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,24,520000,927,1824);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,25,585000,1002,1974);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,26,655200,1080,2130);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,27,730800,1161,2292);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,28,812000,1245,2460);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,29,899000,1332,2634);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,30,992000,1422,2814);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,31,1091200,1515,3000);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,32,1196800,1611,3192);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,33,1309000,1710,3390);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,34,1428000,1812,3594);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,35,1554000,1917,3804);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,36,1687200,2025,4020);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,37,1827800,2136,4242);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,38,1976000,2250,4470);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,39,2132000,2367,4704);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,40,2296000,2487,4944);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,41,2468200,2610,5190);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,42,2648800,2736,5442);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,43,2838000,2865,5700);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,44,3036000,2997,5964);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,45,3243000,3132,6234);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,46,3459200,3270,6510);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,47,3684800,3411,6792);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,48,3920000,3555,7080);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,49,4165000,3700,7400);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (4,50,0,3852,7674);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,1,200,30,30);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,2,800,37,40);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,3,2000,47,55);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,4,4000,61,75);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,5,7000,78,100);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,6,11200,98,130);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,7,16800,122,165);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,8,24000,149,205);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,9,33000,179,250);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,10,44000,213,300);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,11,57200,250,355);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,12,72800,290,415);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,13,91000,334,480);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,14,112000,381,550);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,15,136000,431,625);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,16,163200,485,705);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,17,193800,542,790);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,18,228000,602,880);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,19,266000,666,975);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,20,308000,733,1075);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,21,354200,803,1180);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,22,404800,877,1290);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,23,460000,954,1405);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,24,520000,1034,1525);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,25,585000,1118,1650);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,26,655200,1205,1780);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,27,730800,1295,1915);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,28,812000,1389,2055);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,29,899000,1486,2200);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,30,992000,1586,2350);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,31,1091200,1690,2505);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,32,1196800,1797,2665);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,33,1309000,1907,2830);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,34,1428000,2021,3000);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,35,1554000,2138,3175);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,36,1687200,2258,3355);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,37,1827800,2382,3540);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,38,1976000,2509,3730);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,39,2132000,2639,3925);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,40,2296000,2773,4125);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,41,2468200,2910,4330);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,42,2648800,3050,4540);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,43,2838000,3194,4755);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,44,3036000,3341,4975);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,45,3243000,3491,5200);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,46,3459200,3645,5430);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,47,3684800,3802,5665);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,48,3920000,3962,5905);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,49,4165000,4126,6150);
INSERT INTO class_info (class_id, level, level_up_exp, player_hp, player_mp) VALUES (5,50,0,4300,6400);

DROP TABLE IF EXISTS classes_levelup_spells;
CREATE TABLE classes_levelup_spells (
  class_id INT NOT NULL,
  level SMALLINT NOT NULL,
  spell_id INT NOT NULL
);

/* Rogue */
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 4, 3);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 11, 25);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 14, 26);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 19, 27);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 24, 28);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 28, 81);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 31, 82);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 34, 83);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 39, 84);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (2, 44, 85);

/* Warrior */
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 1, 4);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 5, 20);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 9, 21);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 14, 22);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 19, 23);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 25, 24);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 29, 74);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 30, 75);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 32, 76);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 35, 77);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 39, 86);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 45, 78);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 46, 79);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 48, 80);
INSERT INTO classes_levelup_spells (class_id, level, spell_id) VALUES (3, 49, 87);