-- Formula Lifestealing
DELETE FROM `creature_loot_template` WHERE `entry` = 10499 AND `item` = 16254;
INSERT INTO `creature_loot_template` VALUES
(10499, 16254, 12, 1, 0, 1, 1);