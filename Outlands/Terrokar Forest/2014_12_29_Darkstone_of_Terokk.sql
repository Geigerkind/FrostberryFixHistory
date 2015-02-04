UPDATE `creature_template` SET `inhabitType` = 4, `AIName` = 'SmartAI', `flags_extra` = 128 WHERE `entry` = 22288;

DELETE FROM `creature` WHERE `id` = 22288;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('22288','530','3519','3677','1','1','0','0','-2510.96','5419.45','8.018','3.53345','300','0','0','42','0','0','0','0','0'),
('22288','530','3519','3677','1','1','0','0','-2512.43','5417.21','6.81955','1.6375','300','0','0','42','0','0','0','0','0'),
('22288','530','3519','3677','1','1','0','0','-2514.53','5418.71','8.22536','0.196291','300','0','0','42','0','0','0','0','0'),
('22288','530','3519','3677','1','1','0','0','-2513.17','5420.83','8.35004','4.80501','300','0','0','42','0','0','0','0','0');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 22288;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(22288, 0, 0, 23, 100, 0, 38736, 1, 0, 0, 15, 10839, 0, 18, 100, 0, 'On Spellhit give questcredit');
