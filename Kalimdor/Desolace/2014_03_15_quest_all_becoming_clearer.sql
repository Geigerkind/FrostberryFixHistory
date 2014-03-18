-- quest all becoming clearer (ID: 14195)
-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI', `minlevel` = 85, `maxlevel` = 85, `faction_a` = 14, `faction_h` = 14, `npcflag` = 0, `speed_walk` = 1, `speed_run` = 1, `mindmg` = 1, `maxdmg` = 1, `attackpower` = 1, `unit_flags` = 33554436, `unit_flags2` = 2, `type_flags` = 1048576, `flags_extra` = 0 WHERE `entry` = 35382;
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = 35382;
-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35382;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(35382, 0, 0, 0, 100, 0, 1, 1, 1, 1, 33, 35382, 0, 18, 50, 0, 'On OOC - target player - give questcredit'),
(35382, 0, 1, 0, 100, 0, 1, 1, 1, 1, 37, 0, 0, 1, 0, 0, 'On OOC - target player - give questcredit');
