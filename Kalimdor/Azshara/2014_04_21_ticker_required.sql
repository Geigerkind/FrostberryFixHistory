-- Ticker Required (ID: 14485)
-- Dummy Target Spell: 54694/56685/88529
-- creature correction
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags` = 768 WHERE `entry` = 36750;

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 36750;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,36750,0,0,30,1,199333,15,0,0,0,0,'','Work if near gameobject');

-- trigger npc
DELETE FROM `creature_template` WHERE `entry` = 6990;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(6990, 4449, 4449, 4449, 4449, "Ticker Required - Trigger", 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4);

DELETE FROM `creature` WHERE `id` = 6990;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1221','1','1','0','0','3278.78','-5256.02','90.6445','3.13356','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1221','1','1','0','0','3484.24','-5248.82','98.0026','4.64543','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1223','1','1','0','0','3448.35','-5366.34','116.837','4.03676','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1221','1','1','0','0','3608.77','-5266.1','98.2843','3.31398','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1223','1','1','0','0','3546.37','-5324.6','140.413','4.69649','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1223','1','1','0','0','3631.82','-5358.04','115.947','4.75148','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1221','1','1','0','0','3452.17','-5151.57','89.1876','5.03396','300','0','0','3052','0','0','0','0','0');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 36895;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36895, 36750, 6990);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36895, 0, 0, 0, 19, 100, 0, 14485, 0, 0, 0, 85, 69314, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On quest accept invoker summons ticker'),
(36750, 0, 0, 0, 1, 100, 0, 20, 20, 20, 20, 11, 54694, 3, 0, 0, 0, 0, 11, 6990, 20, 0, 0, 0, 0, 'On OOC cast dummy spell on trigger'),
(6990, 0, 0, 1, 8, 100, 1, 54694, 1, 1, 1, 11, 91980, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast explosion'),
(6990, 0, 1, 0, 61, 100, 1, 0, 0, 0, 0, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event - despawn'),
(6990, 0, 2, 0, 8, 100, 1, 54694, 1, 1, 1, 33, 36843, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On spellhit give questcredit');