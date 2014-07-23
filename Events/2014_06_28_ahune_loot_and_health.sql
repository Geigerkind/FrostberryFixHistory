-- Ahune Loot
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 187892;

DELETE FROM `gameobject_loot_template` WHERE `entry` = 187892;
INSERT INTO `gameobject_loot_template` VALUES
-- Cloaks
(187892, 1, 100, 1, 1, -25740, 1),
-- Huge Snowball
(187892, 35557, 65, 1, 0, 1, 3),
-- Formula: Enchant Weapon - Deathfrost
(187892, 35498, 3, 1, 0, 1, 1),
-- Lord of Frost Private Label
(187892, 35720, 27, 1, 0, 1, 6),
-- Shards of Ahune
(187892, 35723, 100, 1, 0, 1, 1);

-- Cloaks
DELETE FROM `reference_loot_template` WHERE `entry` = 25740;
INSERT INTO `reference_loot_template` VALUES
(25740, 69769, 0, 1, 1, 1, 1),
(25740, 69770, 0, 1, 1, 1, 1),
(25740, 69768, 0, 1, 1, 1, 1),
(25740, 69767, 0, 1, 1, 1, 1),
(25740, 69766, 0, 1, 1, 1, 1);

-- Ahune
UPDATE `creature_template` SET `exp` = 3, `health_mod` = 26 WHERE `entry` IN (25740, 26338);