-- quest Latent demons of the land (ID: 28444/28312)

DELETE FROM `creature_loot_template` WHERE `entry` = 9778;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(9778, 63423, -100, 1, 0, 1, 3);

UPDATE `creature_template` SET `lootid` = 9778 WHERE `entry` IN (9776, 9778, 9779);