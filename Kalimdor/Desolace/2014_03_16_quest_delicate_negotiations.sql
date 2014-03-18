-- quest Delicate Negotiations (ID: 14318)
-- stack buff 80627
-- dummy spell 54694
-- creature / Gobject
DELETE FROM `creature_template` WHERE `entry` IN (70040, 70041, 70042, 70043, 70044, 70045, 70046, 70047, 70048, 70049, 70050);
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`) VALUES 
(70040, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 1', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70041, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 2', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70042, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 3', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70043, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 4', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70044, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 5', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70045, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 6', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70046, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 7', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70047, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 8', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70048, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 9', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70049, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 10', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70050, 4449, 4449, 4449, 4449, 'Delicate Negotations - Trigger 11', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36141, 36142);
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI', `type` = 10, `flags` = 0, `data1` = 14318, `faction` = 0, `data5` = 1, `data19` = 0 WHERE `entry` = 195693;
UPDATE `creature_template` SET `MovementType` = 0, `unit_flags` = 4, `faction_h` = 35, `faction_a` = 35 WHERE `entry` = 36142;
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = 36141;
DELETE FROM `creature` WHERE `guid` IN (139788, 139799, 139800, 139806, 139796, 139802, 139811, 139801, 139798, 139810, 139812);

insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('36163','1','405','4797','1','1','0','36163','-832.646','946.92','90.5415','4.55295','300','0','0','1336','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70040','1','405','4797','1','65535','0','0','-927.13','1041.1','90.7132','2.34174','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70041','1','405','4797','1','65535','0','0','-922.747','1050.64','92.6489','0.766735','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70042','1','405','4797','1','65535','0','0','-912.063','1050.49','95.6989','5.77192','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70043','1','405','4797','1','65535','0','0','-898.048','1049.29','97.3325','5.77192','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70044','1','405','4797','1','65535','0','0','-894.452','1037.23','92.6537','4.79542','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70045','1','405','4797','1','65535','0','0','-898.457','1030.16','92.8716','4.19692','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70046','1','405','4797','1','65535','0','0','-906.04','1018.45','91.4416','3.31942','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70047','1','405','4797','1','65535','0','0','-913.929','1020.66','92.1726','2.86942','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70048','1','405','4797','1','65535','0','0','-922.32','1024.32','91.4086','2.49592','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70049','1','405','4797','1','65535','0','0','-927.934','1033.54','90.7684','2.11792','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70050','1','405','4797','1','65535','0','0','-914.852','1008.81','90.2956','1.45819','300','0','0','4050','0','0','0','0','0');


-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36141, 36142, 36159, 195693);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(195693, 1, 0, 64, 100, 0, 0, 0, 0, 0, 12, 36142, 2, 120000, 0, 11, 36141, 30, 'On gossip hello - spawn creature'),
(36142, 0, 0, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70040, 30, 'On OOC - spawn creature'),
(36142, 0, 1, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70041, 30, 'On OOC - spawn creature'),
(36142, 0, 2, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70042, 30, 'On OOC - spawn creature'),
(36142, 0, 3, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70043, 30, 'On OOC - spawn creature'),
(36142, 0, 4, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70044, 30, 'On OOC - spawn creature'),
(36142, 0, 5, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70045, 30, 'On OOC - spawn creature'),
(36142, 0, 6, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70046, 30, 'On OOC - spawn creature'),
(36142, 0, 7, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70047, 30, 'On OOC - spawn creature'),
(36142, 0, 8, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70048, 30, 'On OOC - spawn creature'),
(36142, 0, 9, 1, 100, 1, 1, 1, 1, 1, 12, 36159, 1, 120000, 0, 11, 70049, 30, 'On OOC - spawn creature'),
(36159, 0, 0, 6, 100, 1, 0, 0, 0, 0, 11, 54694, 2, 0, 0, 11, 36141, 30, 'On death - cast dummy spell'),
(36141, 0, 0, 8, 100, 0, 54694, 1, 1, 1, 11, 80627, 2, 0, 0, 1, 0, 0, 'On spellhit - cast dummy spell'),
(36141, 0, 1, 23, 100, 1, 80627, 4, 1, 1, 33, 36142, 0, 0, 0, 18, 50, 0, 'On having 4 stacks - give questcredit'),
(36141, 0, 2, 23, 100, 1, 80627, 4, 1, 1, 12, 36163, 2, 120000, 0, 11, 70050, 50, 'On having 4 stacks - spawn Kahn'),
(36141, 0, 3, 23, 100, 1, 80627, 4, 1, 1, 37, 0, 0, 0, 0, 1, 0, 0, 'On having 4 stacks - kill self');

-- condition
-- DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 195693;
-- INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
-- (22,1,195693,0,0,29,0,36142,30,0,1,0,0,'','Need to be player to trigger event');