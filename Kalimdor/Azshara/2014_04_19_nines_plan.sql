-- Nine's Plan (ID: 14408)
-- getting rid of trash
DELETE FROM `creature` WHERE `id` IN (36156, 36157);

-- trigger npc
DELETE FROM `creature_template` WHERE `entry` = 7003;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(7003, 4449, 4449, 4449, 4449, "Nine's Plan - Trigger", 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4);

DELETE FROM `creature` WHERE `id` = 7003;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('7003','1','16','4829','1','1','0','0','2579.17','-5909.22','96.6795','0.12188','300','0','0','3052','0','0','0','0','0');

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 36472;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 10801;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,36472,0,0,29,0,36156,50,0,1,0,0,'','SAI doesnt work if creature is near'),
(15,10801,0,0,0,9,0,14408,0,0,0,0,0,'','Show gossip if player is on quest');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 36472;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 36472;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36472, 0, 0, 1, 62, 100, 0, 10801, 0, 0, 0, 12, 36156, 1, 120000, 0, 0, 0, 11, 7003, 100, 0, 0, 0, 0, 'On gossip select summon Mutant Goblin'),
(36472, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 33, 52041, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'Linked with previous event - give questcredit');