-- epic loot drop rate BOT
SET @PDROP = 1.5;

CREATE TEMPORARY TABLE IF NOT EXISTS 
  temp_table
ENGINE=MEMORY 
AS (
  SELECT `entry` FROM `creature_loot_template` WHERE `minCountOrRef` = -59525
);

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` IN 
(SELECT `entry` FROM `temp_table`) and `item` IN (2,3);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = @PDROP WHERE `entry` IN 
(SELECT `entry` FROM `temp_table`) and `item` = 1;

UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 0 WHERE `entry` = 59525;

DROP TABLE IF EXISTS temp_table;