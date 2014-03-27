-- achievement issue cata
-- Allianz 1,3,4,7,11,22
-- Horde 2,5,6,8,9,10
CREATE TEMPORARY TABLE IF NOT EXISTS 
  temp_table_one
ENGINE=MEMORY 
AS (
  SELECT `guildId` FROM `guild` INNER JOIN `characters` ON `guild`.`leaderguid` = `characters`.`guid` WHERE `characters`.`race` IN (2,5,6,8,9,10)
);
CREATE TEMPORARY TABLE IF NOT EXISTS 
  temp_table_two
ENGINE=MEMORY 
AS (
  SELECT `guildId` FROM `guild` INNER JOIN `characters` ON `guild`.`leaderguid` = `characters`.`guid` WHERE `characters`.`race` IN (1,3,4,7,11,22)
);

DELETE FROM `guild_achievement` WHERE `guildId` IN (SELECT `guildId` FROM `temp_table_one`) AND `achievement` IN (SELECT `id` FROM `dbc_achievement` WHERE `factionFlag` = 1);
DELETE FROM `guild_achievement` WHERE `guildId` IN (SELECT `guildId` FROM `temp_table_two`) AND `achievement` IN (SELECT `id` FROM `dbc_achievement` WHERE `factionFlag` = 0);

DROP TABLE IF EXISTS temp_table_one;
DROP TABLE IF EXISTS temp_table_two;