-- Questchain correction Ashenvale
-- Delete Trash
DELETE FROM `creature` WHERE `guid` IN (115350);

-- correction
UPDATE `creature_template` SET `unit_flags` = 570688260 WHERE `entry` = 8016;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ABS(`ChanceOrQuestChance`) WHERE `item` IN (16305, 16408, 16304, 16303);

DELETE FROM `creature_questrelation` WHERE `quest` IN (13618, 13620);
INSERT INTO `creature_questrelation` VALUES
(8582, 13618),
(8582, 13620);