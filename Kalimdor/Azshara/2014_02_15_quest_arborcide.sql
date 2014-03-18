-- quest Arborcide (ID: 14155)

DELETE FROM `creature_questrelation` WHERE `id` = 35086 AND `quest` = 14155;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(35086, 14155);

DELETE FROM `creature_involvedrelation` WHERE `id` = 35086 AND `quest` = 14155;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(35086, 14155);

UPDATE `creature_template` SET `faction_h` = 14, `faction_a` = 14 WHERE `entry` = 35198;
UPDATE `creature_template` SET `Health_mod` = 25 WHERE `entry` = 35129;