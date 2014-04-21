-- Segmentation Fault: Core Dumped (ID: 14310)
-- Dummy Target Spell: 54694/56685/88529
-- getting rid of trash
DELETE FROM `creature` WHERE `id` IN (36105, 36136, 36098, 36125);

-- correcting creature
UPDATE `creature_template` SET `modelid1` = 29985, `modelid2` = 37144 WHERE `entry` = 36098;

-- creating waypoints
DELETE FROM `waypoints` WHERE `entry` = 36098;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(36098,1,2595.11,-5797.06,77.25,'Quest: Segmentation Fault: Core Dumped - 1 (Wagon)'),
(36098,2,2600.15,-5803.37,77.05,'Quest: Segmentation Fault: Core Dumped - 2 (Wagon)'),
(36098,3,2600.48,-5830.31,78,'Quest: Segmentation Fault: Core Dumped - 3 (Wagon)'),
(36098,4,2598.75,-5869.66,83.71,'Quest: Segmentation Fault: Core Dumped - 4 (Wagon)'),
(36098,5,2597.76,-5893.32,90.15,'Quest: Segmentation Fault: Core Dumped - 5 (Wagon)'),
(36098,6,2597.65,-5927.03,98.51,'Quest: Segmentation Fault: Core Dumped - 6 (Wagon)'),
(36098,7,2597.51,-5960.28,101.05,'Quest: Segmentation Fault: Core Dumped - 7 (Wagon)'),
(36098,8,2617.78,-5974.37,101.05,'Quest: Segmentation Fault: Core Dumped - 8 (Wagon)'),
(36098,9,2617.9,-6058.5,101.12,'Quest: Segmentation Fault: Core Dumped - 9 (Wagon)'),
(36098,10,2619.34,-6088.65,101.06,'Quest: Segmentation Fault: Core Dumped - 10 (Wagon)'),
(36098,11,2635.26,-6101.61,101.11,'Quest: Segmentation Fault: Core Dumped - 11 (Wagon)'),
(36098,12,2645.57,-6101.52,101.16,'Quest: Segmentation Fault: Core Dumped - 12 (Wagon)');

-- adding trigger
DELETE FROM `creature_template` WHERE `entry` = 7002;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(7002, 4449, 4449, 4449, 4449, 'Segmentation Fault: Core Dumped - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4);

DELETE FROM `creature` WHERE `id` = 7002;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('7002','1','16','4829','1','1','0','0','2549.08','-5797.02','77.2256','6.22243','300','0','0','3052','0','0','0','0','0');

-- npc spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 36098;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(36098,62309,0,0);

-- vehicle template accessory
DELETE FROM `vehicle_template_accessory` WHERE `entry` = 36098;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(36098,36105,0,0,'The core',1,200000),
(36098,36125,1,0,'Red Spinning Hazard Light',1,200000),
(36098,36125,2,0,'Red Spinning Hazard Light',1,200000),
(36098,36136,3,0,'Guy who pushes the Wagon',1,200000);

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 195683;
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 68283 AND `ElseGroup` = 2);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,195683,1,0,29,0,36098,50,0,1,0,0,'','SAI doesnt work if creature is near'),
(13,0,68283,0,2,31,0,3,36105,0,0,0,0,'','Spell implecit target Azsharite Core'),
(13,1,68283,0,2,31,0,3,36105,0,0,0,0,'','Spell implecit target Azsharite Core');

-- sai 
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 195683;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36105, 36098);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (195683, 36098, 36105);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(195683, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 12, 36098, 1, 200000, 0, 0, 0, 11, 7002, 100, 0, 0, 0, 0, 'On gossip hello summon Wagon'),
(36098, 0, 0, 0, 1, 100, 1, 1, 1, 1, 1, 53, 0, 36098, 0, 14310, 200000, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC start wp'),
(36098, 0, 1, 0, 40, 100, 1, 12, 0, 0, 0, 33, 36096, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'WP reached give questcredit'),
(36098, 0, 2, 0, 8, 100, 0, 54694, 1, 1, 1, 54, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit pause wp'),
(36105, 0, 0, 0, 23, 100, 0, 68380, 10, 1, 1, 11, 54694, 3, 0, 0, 0, 0, 11, 36098, 40, 0, 0, 0, 0, 'On having 10 stacks of Ovearheating cast dummy spell on wagon'),
(36105, 0, 1, 0, 8, 100, 0, 68283, 1, 1, 1, 28, 68380, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit remove Overheating stacks');