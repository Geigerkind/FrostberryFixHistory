-- quest To the Hilt! (ID: 14219)
-- creature loot template
DELETE FROM `creature_loot_template` WHERE `item` = 48943;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(4675, 48943, 28, 1, 0, 1, 2),
(4673, 48943, 27, 1, 0, 1, 2),
(4674, 48943, 27, 1, 0, 1, 2),
(4671, 48943, 24, 1, 0, 1, 2),
(4672, 48943, 22, 1, 0, 1, 2),
(4670, 48943, 18, 1, 0, 1, 2);

-- gameobject
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 195519;

