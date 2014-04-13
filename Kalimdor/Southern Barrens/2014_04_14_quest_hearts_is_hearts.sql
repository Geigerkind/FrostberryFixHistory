-- Hearts-is-Hearts (ID: 24620)

DELETE FROM `creature_loot_template` WHERE `entry` = 37555 AND `item` = 49946;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(37555,49946,-33.785,1,0,1,1);
