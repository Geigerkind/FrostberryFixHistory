-- quest Furies Footsteps (ID: 14191)
-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI', `minlevel` = 85, `maxlevel` = 85, `faction_a` = 14, `faction_h` = 14, `npcflag` = 0, `speed_walk` = 1, `speed_run` = 1, `mindmg` = 1, `maxdmg` = 1, `attackpower` = 1, `unit_flags` = 33554436, `unit_flags2` = 2, `type_flags` = 1048576, `flags_extra` = 0 WHERE `entry` IN (35363, 35367, 35366);

DELETE FROM `creature` WHERE `id` IN (35366, 35367);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('35366','1','405','603','1','65535','0','0','-342.438','818.005','94.2895','2.1769','300','0','0','1','0','0','0','33554432','0'),
('35367','1','405','603','1','65535','0','0','-243.476','697.413','100.894','2.84946','300','0','0','1','0','0','0','33554432','0');


UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` IN (35363, 35367, 35366);

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35363, 35367, 35366);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(35363, 0, 0, 0, 100, 0, 1, 1, 1, 1, 33, 35363, 0, 18, 50, 0, 'On OOC - target player - give questcredit'),
(35363, 0, 1, 0, 100, 0, 1, 1, 1, 1, 37, 0, 0, 1, 0, 0, 'On OOC - target player - give questcredit'),
(35367, 0, 0, 0, 100, 0, 1, 1, 1, 1, 33, 35367, 0, 18, 50, 0, 'On OOC - target player - give questcredit'),
(35367, 0, 1, 0, 100, 0, 1, 1, 1, 1, 37, 0, 0, 1, 0, 0, 'On OOC - target player - give questcredit'),
(35366, 0, 0, 0, 100, 0, 1, 1, 1, 1, 33, 35366, 0, 18, 50, 0, 'On OOC - target player - give questcredit'),
(35366, 0, 1, 0, 100, 0, 1, 1, 1, 1, 37, 0, 0, 1, 0, 0, 'On OOC - target player - give questcredit');
