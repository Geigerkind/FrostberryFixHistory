-- fix southern barrens quest chain

-- Adding quest to npc
DELETE FROM `creature_questrelation` WHERE `id` = 37154 AND `quest` = 24518;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(37154, 24518);

UPDATE `quest_template` SET `NextQuestId` = 24518 WHERE `id` = 24517;
