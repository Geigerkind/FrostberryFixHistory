-- quest Defend the Gates

UPDATE `quest_template` SET `flags` = 8, `NextQuestId` = 14155 WHERE `id` = 14146;

DELETE FROM `creature_involvedrelation` WHERE `id` = 35086 AND `quest` = 14146;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(35086, 14146);