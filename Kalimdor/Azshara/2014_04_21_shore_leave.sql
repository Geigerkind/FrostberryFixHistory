-- shore leave (ID: 24449)
-- quest correction
UPDATE `quest_template` SET `PrevQuestId` = 14487 WHERE `id` = 24449;

-- trigger npc
DELETE FROM `creature_template` WHERE `entry` = 6991;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(6991, 4449, 4449, 4449, 4449, "shore leave - Trigger", 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4);