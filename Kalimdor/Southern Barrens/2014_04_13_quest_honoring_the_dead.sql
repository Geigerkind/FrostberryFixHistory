-- quest Honoring the Dead (ID: 24573)
-- http://www.youtube.com/watch?v=HTVsdf8AqLE
-- Ghosts: Yonada: 37758 | Krulmoo: 37747 | Dranh: 37756 | Omusa: 37759

-- Creating Trigger NPC
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` IN (10378, 5944, 3703, 6387);
UPDATE `creature_template` SET `MovementType` = 0, `unit_flags` = 4, `AIName` = 'SmartAI', `InhabitType` = 3 WHERE `entry` IN (37758, 37747, 37756, 37759);
UPDATE `creature_template` SET `InhabitType` = 4, `speed_fly` = 5, `speed_run` = 5, `speed_swim` = 5, `speed_walk` = 5 WHERE `entry` = 37759;
DELETE FROM `creature_template` WHERE `entry` IN (6040, 6041, 6042, 6043);
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`) VALUES 
(6040, 4449, 4449, 4449, 4449, 'Honoring the Dead - Yonada', 60, 60, 14, 14, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI'),
(6041, 4449, 4449, 4449, 4449, 'Honoring the Dead - Krulmoo', 60, 60, 14, 14, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI'),
(6042, 4449, 4449, 4449, 4449, 'Honoring the Dead - Dranh', 60, 60, 14, 14, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI'),
(6043, 4449, 4449, 4449, 4449, 'Honoring the Dead - Omusa', 60, 60, 14, 14, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI');

-- Spawning Trigger NPC
DELETE FROM `creature` WHERE `id` IN (6040, 6041, 6042, 6043, 37758, 37747, 37756, 37759);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('6040','1','4709','4851','1','65535','0','0','-2394.81','-1930.69','96.7179','1.05545','300','0','0','3052','0','0','0','0','0'),
('6041','1','4709','4851','1','65535','0','0','-2307.83','-1928.94','96.0134','3.45064','300','0','0','3052','0','0','0','0','0'),
('6042','1','4709','4851','1','65535','0','0','-2374.41','-1948.3','96.0855','1.21746','300','0','0','3052','0','0','0','0','0'),
('6043','1','4709','4851','1','65535','0','0','-2384.77','-1880.63','95.8503','5.93014','300','0','0','3052','0','0','0','0','0');

-- Adding SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (6040, 6041, 6042, 6043, 37758, 37747, 37756, 37759) AND `id` IN (0,1,2,3,4,5);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(6040, 0, 0, 13, 100, 1, 1, 1, 70476, 0, 33, 37758, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On victim casting - target player - give questcredit'),
(6040, 0, 1, 13, 100, 1, 1, 1, 70476, 0, 12, 37758, 3, 10000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On victim casting - summon Yonada - self'),
(6040, 0, 2, 13, 100, 1, 1, 1, 70476, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On victim casting - kill - self'),
(6041, 0, 0, 13, 100, 1, 1, 1, 70476, 0, 33, 37747, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On victim casting - target player - give questcredit'),
(6041, 0, 1, 13, 100, 1, 1, 1, 70476, 0, 12, 37747, 3, 10000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On victim casting - summon Krulmoo - self'),
(6041, 0, 2, 13, 100, 1, 1, 1, 70476, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On victim casting - kill - self'),
(6042, 0, 0, 13, 100, 1, 1, 1, 70476, 0, 33, 37756, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On victim casting - target player - give questcredit'),
(6042, 0, 1, 13, 100, 1, 1, 1, 70476, 0, 12, 37756, 3, 10000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On victim casting - summon Dranh - self'),
(6042, 0, 2, 13, 100, 1, 1, 1, 70476, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On victim casting - kill - self'),
(6043, 0, 0, 13, 100, 1, 1, 1, 70476, 0, 33, 37759, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On victim casting - target player - give questcredit'),
(6043, 0, 1, 13, 100, 1, 1, 1, 70476, 0, 12, 37759, 3, 10000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On victim casting - summon Omusa - self'),
(6043, 0, 2, 13, 100, 1, 1, 1, 70476, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On victim casting - kill - self'),
(37747, 0, 0, 1, 100, 1, 1, 1, 1, 1, 84, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC - play emote and say text'),
(37759, 0, 0, 1, 100, 1, 1, 1, 1, 1, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC - play emote and say text'),
(37759, 0, 1, 52, 100, 1, 0, 37759, 0, 0, 1, 1, 2000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over - play emote and say text'),
(37759, 0, 2, 52, 100, 1, 1, 37759, 0, 0, 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, -2328, -1879, 139.12, 6.24, 'On text over - move to pos'),
(37756, 0, 0, 1, 100, 1, 1, 1, 1, 1, 84, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC - play emote and say text'),
(37758, 0, 0, 1, 100, 1, 1, 1, 1, 1, 84, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC - play emote and say text');

-- Adding creature_text
DELETE FROM `creature_text` WHERE `id` IN (0,1) and `entry` IN (37758, 37747, 37756, 37759);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(37747, 0, 0, 'I ran to wake up the others when the attack hit. Were they able to escape? I tried to fight off the soldiers with a skinning knife...', 12, 0, 100, 0, 0, 0, 'Honoring the Dead - Krulmoo'),
(37759, 0, 0, 'No, stay with the others. Escort them north, away from fighting. I will stay here with the wyverns and cover your escape. Go!', 12, 0, 100, 0, 0, 0, 'Honoring the Dead - Omusa'),
(37759, 1, 1, '...wait, it is over? I´ve been run through... Ah. Of course. I understand now. I am expected elsewhere.', 12, 0, 100, 0, 0, 0, 'Honoring the Dead - Omusa'),
(37758, 0, 0, 'Alliance - they´ve surrounded the camp! What are they doing here? Why are they attacking Taurajo? Get the children - run! RUN!', 12, 0, 100, 0, 0, 0, 'Honoring the Dead - Yonada'),
(37756, 0, 0, 'I can feel the embrace now of all living things, the Earthmother´s eternal peace. Thank you.', 12, 0, 100, 0, 0, 0, 'Honoring the Dead - Dranh');

-- cleaning up camp taurajo
DELETE FROM `creature` WHERE `guid` IN  (77429, 77444, 100305, 76725, 129786, 77414, 78688, 76781, 76775, 76778, 77417, 76988, 78680, 76592, 77433, 78702, 129956, 77416, 77415, 77428, 77427, 77432, 76728, 77443, 77442, 130188);
