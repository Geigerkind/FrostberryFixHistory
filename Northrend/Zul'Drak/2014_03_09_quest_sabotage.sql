-- quest sabotage (ID: 12676)
-- explosion: 110263
-- trigger
DELETE FROM `creature_template` WHERE `entry` = 60016;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`) VALUES 
(60016, 4449, 4449, 4449, 4449, 'Sabotage - Trigger', 70, 70, 14, 14, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI');

-- trigger spawn exported from sqlyog
DELETE FROM `creature` WHERE `id` = 60016;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('60016','571','66','4315','1','1','0','0','6079.03','-2087.06','239.692','2.87539','300','0','0','5342','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('60016','571','66','4315','1','1','0','0','6155.33','-2073.69','239.101','4.94432','300','0','0','5342','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('60016','571','66','4315','1','1','0','0','6164.96','-2136.49','239.462','4.68943','300','0','0','5342','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('60016','571','66','4315','1','1','0','0','6237.5','-2147.9','239.394','4.60703','300','0','0','5342','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('60016','571','66','4315','1','1','0','0','6257.72','-2084.68','240.671','0.954926','300','0','0','5342','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('60016','571','66','4315','1','1','0','0','6061.52','-2027.21','239.426','1.89628','300','0','0','5342','0','0','0','0','0');

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 60016;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(60016, 0, 0, 13, 100, 1, 1, 1, 52315, 0, 33, 28777, 0, 0, 18, 100, 0, 'On victim casting - target player - give questcredit'),
(60016, 0, 1, 13, 100, 1, 1, 1, 52315, 0, 11, 110263, 6, 0, 1, 0, 0, 'On victim casting - self - cast explosion'),
(60016, 0, 2, 13, 100, 1, 1, 1, 52315, 0, 37, 0, 0, 0, 1, 0, 0, 'On victim casting - kill - self');