/* 
 * Children Week
 */

 /*
 Todo
 - Quest Allianz: Cruisin' The Chasm - 29093
 - Quest Horde: Ridin' the Rocketway - 29146
  */

 -- Event settings
 UPDATE `game_event` SET `start_time` = "2014-04-28 11:01:00", `end_time` = "2018-12-31 18:00:00", `length` = 10079 WHERE `eventEntry` = 10;
 
 -- set quests to seasonal
UPDATE `quest_template` SET `ZoneOrSort` = -378 WHERE `id` IN (172, 10943, 29146, 29167, 29176, 29191, 29190, 5502, 10942, 10945, 10953, 10951, 11975, 10963, 10967, 1468, 29093, 29107, 29106, 29119, 29117, 171, 10950, 10954, 10952, 10956, 10968, 10962, 10966, 13926, 13929, 13933, 13950, 13956, 13954, 13937, 13959, 13927, 13930, 13934, 13951, 13955, 13957, 13938, 13960);
DELETE FROM `game_event_seasonal_questrelation` WHERE `eventEntry` = 10 OR `questId` IN (172, 10943, 29146, 29167, 29176, 29191, 29190, 5502, 10942, 10945, 10953, 10951, 11975, 10963, 10967, 1468, 29093, 29107, 29106, 29119, 29117, 171, 10950, 10954, 10952, 10956, 10968, 10962, 10966, 13926, 13929, 13933, 13950, 13956, 13954, 13937, 13959, 13927, 13930, 13934, 13951, 13955, 13957, 13938, 13960);
INSERT INTO `game_event_seasonal_questrelation` (`questid`, `eventEntry`) VALUES
(172, 10),
(10943, 10),
(29146, 10),
(29167, 10),
(29176, 10),
(29191, 10),
(29190, 10),
(5502, 10),
(10942, 10),
(10945, 10),
(10953, 10),
(10951, 10), 
(11975, 10), 
(10963, 10), 
(10967, 10), 
(1468, 10), 
(29093, 10), 
(29107, 10), 
(29106, 10), 
(29119, 10), 
(29117, 10), 
(171, 10), 
(10950, 10), 
(10954, 10), 
(10952, 10), 
(10956, 10), 
(10968, 10), 
(10962, 10), 
(10966, 10), 
(13926, 10), 
(13929, 10), 
(13933, 10), 
(13950, 10), 
(13956, 10), 
(13954, 10), 
(13937, 10), 
(13959, 10), 
(13927, 10), 
(13930, 10), 
(13934, 10), 
(13951, 10), 
(13955, 10), 
(13957, 10), 
(13938, 10), 
(13960, 10);

-- Orphan Matron Battlewail
DELETE FROM `creature_questrelation` WHERE `quest` = 172;
DELETE FROM `game_event_creature_quest` WHERE `quest` = 172;
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(10, 14451, 172);
DELETE FROM `creature` WHERE `guid` = 128862 AND `id` = 14451;
UPDATE `creature` SET `id` = 14451 WHERE `guid` = 88611;

-- Orphan Matron Mercy
DELETE FROM `creature_questrelation` WHERE `quest` IN (10942, 10943);
DELETE FROM `game_event_creature_quest` WHERE `quest` IN (10942, 10943);
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(10, 22819, 10942),
(10, 22819, 10943);

-- Orphan Matron Nightingale
DELETE FROM `creature_questrelation` WHERE `quest` = 1468;
DELETE FROM `game_event_creature_quest` WHERE `quest` = 1468;
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(10, 14450, 1468);
DELETE FROM `creature` WHERE `guid` = 28382 AND `id` = 51988;

-- Blax Bottlerocket - Dragon Kite - Foam Sword
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=23 AND `SourceGroup`=52809 AND `SourceEntry` IN (69231, 69057));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 52809, 69231, 0, 0, 9, 0, 29190, 0, 0, 0, 0, "0", "Children's Week - Dragon Kite 2-Pack"),
(23, 52809, 69057, 0, 0, 9, 0, 5502, 0, 0, 0, 0, "0", "Children's Week - Foam Sword Rack");

-- Craggle Wobbletop - Dragon Kite - Foam Sword
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=23 AND `SourceGroup`=52358 AND `SourceEntry` IN (68890, 69057));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 52358, 68890, 0, 0, 9, 0, 29117, 0, 0, 0, 0, "0", "Children's Week - Dragon Kite 2-Pack"),
(23, 52358, 69057, 0, 0, 9, 0, 171, 0, 0, 0, 0, "0", "Children's Week - Foam Sword Rack");

-- Alurmi - Toy Dragon
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=23 AND `SourceGroup`=21643 AND `SourceEntry` = 31951);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 21643, 31951, 0, 0, 9, 0, 10963, 0, 0, 0, 0, "0", "Children's Week - Toy Dragon"),
(23, 21643, 31951, 0, 1, 9, 0, 10962, 0, 0, 0, 0, "0", "Children's Week - Toy Dragon");

-- Twilber Torquewrench <Steam Tank Mechanic>
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 52190;
DELETE FROM `creature` WHERE `id` = 52189;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('4439806','52189','0','40','108','1','65535','0','0','-10642.9','998.614','32.9905','1.11461','300','0','0','1845','0','0','0','0','0'),
('4439805','52189','0','40','108','1','65535','0','0','-10636.5','994.763','33.6291','1.32302','300','0','0','1845','0','0','0','0','0');
DELETE FROM `game_event_creature` WHERE `guid` IN (25445, 4439805, 4439806);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(10, 25445),
(10, 4439805),
(10, 4439806);

-- Rental Chopper
UPDATE `creature_template` SET `IconName` = "vehichleCursor", `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `VehicleId` = 335, `InhabitType` = 5, `speed_run` = 4, `speed_walk` = 4, `speed_fly` = 4, `speed_swim` = 4, `AIName` = "SmartAI", `unit_flags` = 770 WHERE `entry`  = 52188;
UPDATE `creature_template` SET `IconName` = "vehichleCursor", `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `npcflag` = 1, `AIName` = "SmartAI", `unit_flags` = 770 WHERE `entry` = 52189;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(52188,62309,0,0);
DELETE FROM `vehicle_template_accessory` WHERE `entry` = 52188;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(52188,52183,1,1,"Children's Week - Orphan in Vehicle", 1, 200000);
DELETE FROM `creature_template_addon` WHERE `entry` = 52183;
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES
(52183, 1);

/*
<The Cone of Cold>
*/

-- Ice Elementals - 53153
DELETE FROM `creature` WHERE `id` = 53153;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('28361','53153','0','1519','5154','1','65535','0','0','-9033.47','868.807','110.145','4.0819','300','0','0','186','191','0','0','0','0'),
('28360','53153','1','1637','5332','1','1','0','0','1479.13','-4186.13','53.4899','1.15804','300','0','0','186','191','0','0','0','0');

UPDATE `creature` SET `MovementType` = 0 WHERE `id` IN (53153, 52423, 52412);
UPDATE `creature` SET `modelid` = 0, `spawndist` = 0 WHERE `guid` = 28365;
UPDATE `creature_template` SET `modelid1` = 16946, `modelid2` = 0 WHERE `entry` = 52412;

DELETE FROM `creature_template_addon` WHERE `entry` = 52423;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(52423, "43085 77855");

-- Snixx Quickfreeze <The Cone of Cold>
DELETE FROM `game_event_creature` WHERE `guid` IN (28360, 133998);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(10, 28360), -- Ice Elemental
(10, 133998);
UPDATE `creature_template` SET `npcflag` = 128 WHERE `entry` = 52818;
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=23 AND `SourceGroup`=52818 AND `SourceEntry`=69233);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 52818, 69233, 0, 0, 9, 0, 29191, 0, 0, 0, 0, "0", "Children's Week - Cone of Cold");
DELETE FROM `npc_vendor` WHERE `entry` = 52818;
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
(52818, 69233),
(52818, 69243),
(52818, 69244),
(52818, 33234);

 -- Hans Coldhearth & Bazzil Frostweaver <The Cone of Cold>
DELETE FROM `game_event_creature` WHERE `guid` IN (28355, 28361, 28358, 28365);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(10, 28361), -- Ice Elemental
(10, 28355), -- vendor
(10, 28358), -- vendor
(10, 28365); -- Cone of Cold Shop Circle
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=23 AND `SourceGroup` IN (52420, 52421) AND `SourceEntry`=69027);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 52420, 69027, 0, 0, 9, 0, 29119, 0, 0, 0, 0, "0", "Children's Week - Cone of Cold"),
(23, 52421, 69027, 0, 0, 9, 0, 29119, 0, 0, 0, 0, "0", "Children's Week - Cone of Cold");
DELETE FROM `gameobject` WHERE `guid` = 28585 AND `id` = 3705;


/*
Orcish Orphan Quests
*/

-- Orcish Orphan - Whistle Item: 18597
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 14444;
DELETE FROM `creature_questrelation` WHERE `id` = 14444;
DELETE FROM `game_event_creature_quest` WHERE `id` = 14444;
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(10, 14444, 5502),
(10, 14444, 29190),
(10, 14444, 29146),
(10, 14444, 29167),
(10, 14444, 29176),
(10, 14444, 29191);
DELETE FROM `creature_involvedrelation` WHERE `id` = 14444;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(14444, 172),
(14444, 29190),
(14444, 29146),
(14444, 29167),
(14444, 29176),
(14444, 29191);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=14444 AND `source_type`=0);

-- Questchain
UPDATE `quest_template` SET `PrevQuestId` = 172 WHERE `id` = 29146;
UPDATE `quest_template` SET `PrevQuestId` = 172 WHERE `id` = 29167;
UPDATE `quest_template` SET `PrevQuestId` = 172 WHERE `id` = 29176;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (29191,29190) AND `ConditionTypeOrReference` = 8 AND `ConditionValue1` IN (29146,29167,29176);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`) VALUES
(20,0,29191,0,1,8,0,29146,0,0,0,0),
(20,0,29191,0,2,8,0,29167,0,0,0,0),
(20,0,29190,0,1,8,0,29146,0,0,0,0),
(20,0,29190,0,2,8,0,29167,0,0,0,0),
(20,0,29191,0,3,8,0,29176,0,0,0,0),
(20,0,29190,0,3,8,0,29176,0,0,0,0),
(19,0,29191,0,1,8,0,29146,0,0,0,0),
(19,0,29191,0,2,8,0,29167,0,0,0,0),
(19,0,29190,0,1,8,0,29146,0,0,0,0),
(19,0,29190,0,2,8,0,29167,0,0,0,0),
(19,0,29191,0,3,8,0,29176,0,0,0,0),
(19,0,29190,0,3,8,0,29176,0,0,0,0);
UPDATE `conditions` SET `elsegroup` = 0 WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (29191,29190);
UPDATE `quest_template` SET `NextQuestIdChain` = 0, `ExclusiveGroup` = -29191, `NextQuestid` = 5502 WHERE `id` = 29191;
UPDATE `quest_template` SET `NextQuestIdChain` = 0, `ExclusiveGroup` = -29191, `NextQuestid` = 5502 WHERE `id` = 29190;
DELETE FROM `conditions` WHERE `SourceEntry` = 5502;


-- Quest:  The Fallen Chieftain - 29176 
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(14444, 0, 0, 0, 75, 0, 100, 0, 0, 52700, 20, 1000, 15, 29176, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - The Fallen Chieftain - Area: Red Rocks");
-- Quest: The Banshee Queen - 29167
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(14444, 0, 1, 0, 75, 0, 100, 0, 0, 10181, 5, 1000, 15, 29167, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - The Banshee Queen - Meeting with Lady Sylvanas Windrunner");
-- Quest: You Scream, I Scream... - 29191
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=97602);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 97602, 0, 0, 29, 0, 14444, 7, 0, 0, 0, "0", "Children's Week - Cone of Cold only useable near Orcish Orphan");
-- Quest: Let's Go Fly a Kite - 29190
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=97584);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 97584, 0, 0, 29, 0, 14444, 7, 0, 0, 0, "0", "Children's Week - Dragon Kite 2-Pack only useable near Orcish Orphan");


/*
Blood Elf Orphan Quests
*/

-- Blood Elf Orphan - Whistle Item: 31880
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 22817;
DELETE FROM `creature_questrelation` WHERE `id` = 22817;
DELETE FROM `game_event_creature_quest` WHERE `id` = 22817;
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(10, 22817, 10951),
(10, 22817, 10967),
(10, 22817, 10945),
(10, 22817, 11975),
(10, 22817, 10963),
(10, 22817, 10953);
DELETE FROM `creature_involvedrelation` WHERE `id` = 22817;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(22817, 10951),
(22817, 10942),
(22817, 11975),
(22817, 10963);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=22817 AND `source_type`=0);

-- Questchain
UPDATE `quest_template` SET `PrevQuestId` = 10942 WHERE `id` = 10945;
UPDATE `quest_template` SET `PrevQuestId` = 10942 WHERE `id` = 10953;
UPDATE `quest_template` SET `PrevQuestId` = 10942 WHERE `id` = 10951;
UPDATE `quest_template` SET `SpecialFlags` = 2, `Flags` = 10, `ExclusiveGroup` = 0 WHERE `id` IN (10945, 10953, 10951);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN(19, 20) AND `SourceEntry` IN(11975, 10963) AND `ConditionTypeOrReference` = 8 AND `ConditionValue1` IN (10945, 10953, 10951);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`) VALUES
(20,0,11975,0,1,8,0,10945,0,0,0,0),
(20,0,11975,0,2,8,0,10953,0,0,0,0),
(20,0,10963,0,1,8,0,10945,0,0,0,0),
(20,0,10963,0,2,8,0,10953,0,0,0,0),
(20,0,11975,0,3,8,0,10951,0,0,0,0),
(20,0,10963,0,3,8,0,10951,0,0,0,0),
(19,0,11975,0,1,8,0,10945,0,0,0,0),
(19,0,11975,0,2,8,0,10953,0,0,0,0),
(19,0,10963,0,1,8,0,10945,0,0,0,0),
(19,0,10963,0,2,8,0,10953,0,0,0,0),
(19,0,11975,0,3,8,0,10951,0,0,0,0),
(19,0,10963,0,3,8,0,10951,0,0,0,0);
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `id` IN (11975, 10963);
UPDATE `conditions` SET `elsegroup` = 0 WHERE `SourceTypeOrReferenceId` IN(19, 20) AND `SourceEntry` IN (11975, 10963);
UPDATE `quest_template` SET `NextQuestIdChain` = 10967, `ExclusiveGroup` = -11975, `NextQuestid` = 10967 WHERE `id` = 11975;
UPDATE `quest_template` SET `NextQuestIdChain` = 10967, `ExclusiveGroup` = -11975, `NextQuestid` = 10967 WHERE `id` = 10963;
DELETE FROM `conditions` WHERE `SourceEntry` = (10967);

-- Quest: Visit the Throne of the Elements - 10953
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22817, 0, 0, 0, 75, 0, 100, 0, 0, 22839, 15, 1000, 15, 10953, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - Visit the Throne of the Elements");
-- Quest: Hch'uu and the Mushroom People - 10945
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22817, 0, 1, 0, 75, 0, 100, 0, 0, 22823, 20, 1000, 15, 10945, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - Hch'uu and the Mushroom People");
-- Quest: A Trip to the Dark Portal - 10951
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22817, 0, 2, 0, 75, 0, 100, 0, 0, 22833, 15, 1000, 15, 10951, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - A Trip to the Dark Portal");
REPLACE INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('157225','22833','530','3483','3539','1','1','0','0','-248.345749','930.403992','84.378281','1.57473','500','0','0','0','0','0','0','0','0');
-- Quest: Now, When I Grow Up... - 11975
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22817, 0, 3, 0, 75, 0, 100, 0, 0, 26400, 10, 1000, 15, 11975, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - Now, When I Grow Up...");
-- Quest: Time to Visit the Caverns - 10963
UPDATE `quest_template` SET `SpecialFlags` = 0, `Flags` = 10 WHERE `id` = 10963;

/*
Human Orphan Quests
*/

-- Human Orphan - Whistle Item: 18598
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 14305;
DELETE FROM `creature_questrelation` WHERE `id` = 14305;
DELETE FROM `game_event_creature_quest` WHERE `id` = 14305;
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(10, 14305, 29093),
(10, 14305, 29107),
(10, 14305, 29106),
(10, 14305, 29119),
(10, 14305, 29117),
(10, 14305, 171);
DELETE FROM `creature_involvedrelation` WHERE `id` = 14305;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(14305, 1468),
(14305, 29093),
(14305, 29107),
(14305, 29106),
(14305, 29119),
(14305, 29117);
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 14305 AND `source_type` = 0);

-- Questchain
UPDATE `quest_template` SET `PrevQuestId` = 1468 WHERE `id` = 29093;
UPDATE `quest_template` SET `PrevQuestId` = 1468 WHERE `id` = 29107;
UPDATE `quest_template` SET `PrevQuestId` = 1468 WHERE `id` = 29106;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN(19, 20) AND `SourceEntry` IN(29119, 29117) AND `ConditionTypeOrReference` = 8 AND `ConditionValue1` IN(29093, 29107, 29106);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`) VALUES
(20,0,29119,0,1,8,0,29093,0,0,0,0),
(20,0,29119,0,2,8,0,29107,0,0,0,0),
(20,0,29117,0,1,8,0,29093,0,0,0,0),
(20,0,29117,0,2,8,0,29107,0,0,0,0),
(20,0,29119,0,3,8,0,29106,0,0,0,0),
(20,0,29117,0,3,8,0,29106,0,0,0,0),
(19,0,29119,0,1,8,0,29093,0,0,0,0),
(19,0,29119,0,2,8,0,29107,0,0,0,0),
(19,0,29117,0,1,8,0,29093,0,0,0,0),
(19,0,29117,0,2,8,0,29107,0,0,0,0),
(19,0,29119,0,3,8,0,29106,0,0,0,0),
(19,0,29117,0,3,8,0,29106,0,0,0,0);
UPDATE `conditions` SET `elsegroup` = 0 WHERE `SourceTypeOrReferenceId` IN(19, 20) AND `SourceEntry` IN(29119, 29117);
UPDATE `quest_template` SET `NextQuestIdChain` = 171, `ExclusiveGroup` = -29119, `NextQuestid` = 171 WHERE `id` = 29119;
UPDATE `quest_template` SET `NextQuestIdChain` = 171, `ExclusiveGroup` = -29119, `NextQuestid` = 171 WHERE `id` = 29117;
DELETE FROM `conditions` WHERE `SourceEntry` = 171;

-- Quest: Malfurion Has Returned! - 29107
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(14305, 0, 0, 0, 75, 0, 100, 0, 0, 43845, 5, 1000, 15, 29107, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - Malfurion Has Returned!");
-- Quest: The Biggest Diamond Ever! - 29106
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(14305, 0, 1, 0, 75, 0, 100, 0, 0, 52321, 5, 1000, 15, 29106, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - The Biggest Diamond Ever!");
-- Quest: You Scream, I Scream... - 29119
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=97020);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 97020, 0, 0, 29, 0, 14305, 7, 0, 0, 0, "0", "Children's Week - Cone of Cold only useable near Human Orphan");
-- Quest: Let's Go Fly a Kite - 29117
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=96864);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96864, 0, 0, 29, 0, 14305, 7, 0, 0, 0, "0", "Children's Week - Dragon Kite 2-Pack only useable near Human Orphan");
-- Quest: Cruisin' the Chasm - 29093
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (52188, 52189) AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52189, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 86, 96505, 1, 7, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Children's Week - Ride Rental Chopper");
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=52189);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 52189, 0, 1, 9, 0, 29093, 0, 0, 0, 0, "0", "Children's Week - only ride Rental Chopper when Quest is active"),
(22, 1, 52189, 0, 1, 12, 0, 10, 0, 0, 0, 0, "0", "Children's Week - only ride Rental Chopper when event is active");
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52188, 0, 0, 1, 27, 0, 100, 1, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 19, 14305, 3, 0, 0, 0, 0, 0, "Childen's Week - kill existing Orphan"),
(52188, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 52188, 0, 29093, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Children's Week - start WP when mounted"),
(52188, 0, 16, 0, 40, 0, 100, 0, 101, 52188, 0, 0, 75, 96665, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Children's Week - add cyclone aura no. 1"),
(52188, 0, 17, 0, 40, 0, 100, 0, 101, 52188, 0, 0, 75, 59892, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Children's Week - add cyclone aura no. 2"),
(52188, 0, 18, 0, 40, 0, 100, 0, 140, 52188, 0, 0, 28, 96665, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Children's Week - remove cyclone aura no. 1"),
(52188, 0, 19, 0, 40, 0, 100, 0, 140, 52188, 0, 0, 28, 59892, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Children's Week - remove cyclone aura no. 2"),
(52188, 0, 20, 21, 40, 0, 100, 0, 174, 52188, 0, 0, 15, 29093, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Children's Week - complete quest on dismount"),
(52188, 0, 21, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 98251, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Children's Week - exit vehicle on trip finished");

DELETE FROM `waypoints` WHERE `entry` = 52188;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) values
('52188','77','-10443.3','1822.47','26.9561'),
('52188','76','-10438.9','1838.56','28.3387'),
('52188','75','-10423.2','1844.43','29.0887'),
('52188','74','-10395.5','1846.11','45.5372'),
('52188','73','-10373.3','1849.46','35.8881'),
('52188','72','-10366','1851.53','36.7094'),
('52188','71','-10358.2','1851.49','36.776'),
('52188','70','-10343.9','1848.54','36.0916'),
('52188','69','-10333','1845.48','35.7543'),
('52188','68','-10320.7','1841.69','35.9776'),
('52188','67','-10308.7','1837.55','36.0998'),
('52188','66','-10295.6','1831.12','37.0114'),
('52188','65','-10288','1826.83','37.1998'),
('52188','64','-10279.2','1819.41','37.4369'),
('52188','63','-10274.1','1813.28','37.6872'),
('52188','62','-10269.6','1802.46','37.8671'),
('52188','61','-10260.6','1779.72','38.4583'),
('52188','60','-10260.6','1779.72','38.4583'),
('52188','59','-10257.3','1770.32','37.1427'),
('52188','58','-10256.9','1760.59','36.2959'),
('52188','57','-10257','1749.04','35.6848'),
('52188','56','-10257.1','1738.5','34.9908'),
('52188','55','-10258.2','1727.05','33.4179'),
('52188','54','-10266.5','1713.8','31.116'),
('52188','53','-10270.1','1702.92','29.6382'),
('52188','52','-10268.8','1687.91','28.8017'),
('52188','51','-10277.2','1636.2','54.5886'),
('52188','50','-10282.3','1608.64','45.173'),
('52188','49','-10286','1590.5','32.5042'),
('52188','48','-10288.9','1578.78','33.3344'),
('52188','47','-10291.7','1567.64','34.6707'),
('52188','46','-10294.9','1555.82','35.27'),
('52188','45','-10299.2','1542.06','35.58'),
('52188','44','-10305.9','1526.64','36.4236'),
('52188','43','-10311.4','1519.21','36.587'),
('52188','42','-10321.6','1512.11','37.6525'),
('52188','41','-10330.1','1506.28','37.898'),
('52188','40','-10338.1','1501','37.9725'),
('52188','39','-10352.2','1484.42','38.3603'),
('52188','38','-10363.6','1461.42','39.8509'),
('52188','37','-10364.7','1458.57','39.9289'),
('52188','36','-10368.1','1445.28','40.2487'),
('52188','35','-10368.9','1435.87','40.5195'),
('52188','34','-10369','1409.31','41.7901'),
('52188','33','-10369','1409.31','41.7901'),
('52188','32','-10368.4','1383.63','44.1338'),
('52188','31','-10368.4','1383.63','44.1338'),
('52188','30','-10368.4','1369.18','46.1433'),
('52188','29','-10369','1356.73','46.3491'),
('52188','28','-10371.4','1338.29','45.7619'),
('52188','27','-10373.5','1331.37','45.2836'),
('52188','26','-10380.2','1315.05','44.0575'),
('52188','25','-10397.4','1289.48','42.4154'),
('52188','24','-10397.4','1289.48','42.4154'),
('52188','23','-10402.5','1282.14','44.0446'),
('52188','22','-10407.4','1273.65','44.0967'),
('52188','21','-10413.1','1262.32','45.7792'),
('52188','20','-10417.3','1251.26','47.1212'),
('52188','19','-10418.6','1243.92','46.74'),
('52188','18','-10419.7','1235.84','45.6721'),
('52188','17','-10420.9','1225.62','44.9738'),
('52188','16','-10422.2','1214.64','44.3896'),
('52188','15','-10423.1','1202.08','43.032'),
('52188','14','-10424.1','1189.83','40.8897'),
('52188','13','-10424.5','1178.28','39.0196'),
('52188','12','-10422','1158.88','36.2204'),
('52188','11','-10421.1','1144.74','34.3309'),
('52188','10','-10422.5','1123.93','32.3682'),
('52188','9','-10430.5','1093.82','34.6133'),
('52188','8','-10433.7','1076.29','38.2761'),
('52188','7','-10430.3','1039.37','43.8875'),
('52188','6','-10426.8','1007.3','38.4313'),
('52188','5','-10430.4','982.682','34.3402'),
('52188','4','-10466.1','952.213','35.8034'),
('52188','3','-10516.1','958.403','40.967'),
('52188','2','-10567.2','977.575','40.1746'),
('52188','1','-10629.9','1005.07','32.3313'),
('52188','78','-10444.1','1809.14','26.8096'),
('52188','79','-10445','1801.57','29.0157'),
('52188','80','-10449','1788.04','18.3717'),
('52188','81','-10454.1','1771.4','4.25035'),
('52188','82','-10457.8','1760.2','-5.71099'),
('52188','83','-10461.8','1748.67','-9.16246'),
('52188','84','-10465.9','1741.36','-10.31'),
('52188','85','-10473.5','1731.59','-7.87963'),
('52188','86','-10474.7','1725.25','-7.43972'),
('52188','87','-10475.9','1713.94','-8.67082'),
('52188','88','-10479.1','1706.01','-5.48845'),
('52188','89','-10480','1698.35','-5.6722'),
('52188','90','-10481','1684.28','-8.47195'),
('52188','91','-10480.9','1673.82','-6.68686'),
('52188','92','-10478','1658.25','-8.69035'),
('52188','93','-10476.8','1652.73','-8.09152'),
('52188','94','-10472','1639.18','-5.59078'),
('52188','95','-10465.7','1622.2','-6.09716'),
('52188','96','-10459.5','1628.11','-12.4832'),
('52188','97','-10452.1','1632.97','-24.069'),
('52188','98','-10446.8','1636.44','-32.2998'),
('52188','99','-10441','1639.4','-39.3319'),
('52188','100','-10431.2','1648.6','-41.1046'),
('52188','101','-10424.6','1655.77','-40.1893'),
('52188','102','-10420.8','1657.3','-30.2389'),
('52188','103','-10414','1651.59','-13.9455'),
('52188','104','-10405.3','1644.83','-12.454'),
('52188','105','-10401.9','1642.54','-11.4815'),
('52188','106','-10379.2','1630.98','2.06729'),
('52188','107','-10366.9','1633.31','9.84019'),
('52188','108','-10351.3','1644.49','20.0737'),
('52188','109','-10347','1652.39','24.5457'),
('52188','110','-10346.3','1672.72','34.5485'),
('52188','111','-10353.9','1693.89','44.4204'),
('52188','112','-10363.9','1705.39','50.5588'),
('52188','113','-10376.9','1709.81','55.6239'),
('52188','114','-10398.1','1710.17','65.7952'),
('52188','115','-10415','1701.6','73.6631'),
('52188','116','-10425.2','1686.66','79.2758'),
('52188','117','-10431.4','1668.35','84.3855'),
('52188','118','-10428.4','1644.98','88.8897'),
('52188','119','-10420.5','1633.32','91.7687'),
('52188','120','-10401.2','1620.35','96.124'),
('52188','121','-10378.7','1616.79','99.2632'),
('52188','122','-10359.2','1622.19','103.752'),
('52188','123','-10344.8','1635.32','107.677'),
('52188','124','-10337.6','1656.84','111.527'),
('52188','125','-10338.7','1664.1','111.24'),
('52188','126','-10342.1','1678.33','110.922'),
('52188','127','-10358.6','1698.53','109.892'),
('52188','128','-10374.9','1711.45','108.952'),
('52188','129','-10394.1','1717.66','107.783'),
('52188','130','-10415.6','1716.98','106.054'),
('52188','131','-10432.7','1710.41','105.018'),
('52188','132','-10450.2','1692.55','102.977'),
('52188','133','-10455.7','1668.21','99.9697'),
('52188','134','-10453.6','1656.69','97.4191'),
('52188','135','-10439.3','1628.44','87.6985'),
('52188','136','-10422.3','1590.66','72.1566'),
('52188','137','-10416.7','1575.3','65.9043'),
('52188','138','-10409.7','1552.26','56.5558'),
('52188','139','-10406.5','1538.78','51.0391'),
('52188','140','-10404.3','1516.85','41.9707'),
('52188','141','-10407','1497.88','32.9142'),
('52188','142','-10404.4','1487.68','36.3144'),
('52188','143','-10390.3','1464.86','41.5244'),
('52188','144','-10379.9','1448.18','41.13'),
('52188','145','-10372.6','1432.28','40.8282'),
('52188','146','-10365.3','1416.39','40.9169'),
('52188','147','-10356.9','1382.3','42.453'),
('52188','148','-10366','1359.88','46.5008'),
('52188','149','-10379.2','1343.27','48.5978'),
('52188','150','-10387.7','1334.64','48.8863'),
('52188','151','-10410','1311.31','40.1834'),
('52188','152','-10425.4','1293.78','40.6492'),
('52188','153','-10435.3','1272.45','42.2169'),
('52188','154','-10432.9','1249.59','45.0377'),
('52188','155','-10429.2','1235.94','45.1866'),
('52188','156','-10428.4','1212.04','43.8854'),
('52188','157','-10430.1','1194.62','41.4027'),
('52188','158','-10434.1','1158.63','34.0025'),
('52188','159','-10438.2','1135.61','31.8291'),
('52188','160','-10443.4','1114.93','32.7541'),
('52188','161','-10449.1','1100.94','34.7329'),
('52188','162','-10457.7','1079.94','42.7426'),
('52188','163','-10466','1057.7','50.3429'),
('52188','164','-10467','1037.82','55.2228'),
('52188','165','-10469.3','1010.69','54.1998'),
('52188','166','-10477.4','998.583','52.6933'),
('52188','167','-10495.2','981.163','50.0473'),
('52188','168','-10512.1','970.996','46.1007'),
('52188','169','-10532.4','969.438','42.2674'),
('52188','170','-10554.5','974.23','41.098'),
('52188','171','-10576.9','982.572','38.486'),
('52188','172','-10591.4','988.979','36.8511'),
('52188','173','-10613.8','998.475','33.5445'),
('52188','174','-10637.2','1001.06','32.8922');














/*
Draenei Orphan Quests
*/

-- Draenei Orphan - Whistle Item: 31881
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` = 22818;
DELETE FROM `creature_questrelation` WHERE `id` = 22818;
DELETE FROM `game_event_creature_quest` WHERE `id` = 22818;
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(10, 22818, 10952),
(10, 22818, 10950),
(10, 22818, 10966),
(10, 22818, 10954),
(10, 22818, 10956),
(10, 22818, 10962);
DELETE FROM `creature_involvedrelation` WHERE `id` = 22818;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(22818, 10952),
(22818, 10950),
(22818, 10943),
(22818, 10962);
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 22818 AND `source_type` = 0);

-- Questchain
UPDATE `quest_template` SET `PrevQuestId` = 10943 WHERE `id` = 10950;
UPDATE `quest_template` SET `PrevQuestId` = 10943 WHERE `id` = 10954;
UPDATE `quest_template` SET `PrevQuestId` = 10943 WHERE `id` = 10952;
UPDATE `quest_template` SET `SpecialFlags` = 2, `Flags` = 10 WHERE `id` IN (10950, 10954, 10952, 10956, 10968);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19, 20) AND `SourceEntry` IN (10956, 10962) AND `ConditionTypeOrReference` = 8 AND `ConditionValue1` IN (10950, 10954, 10952);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`) VALUES
(20,0,10956,0,1,8,0,10950,0,0,0,0),
(20,0,10956,0,2,8,0,10954,0,0,0,0),
(20,0,10962,0,1,8,0,10950,0,0,0,0),
(20,0,10962,0,2,8,0,10954,0,0,0,0),
(20,0,10956,0,3,8,0,10952,0,0,0,0),
(20,0,10962,0,3,8,0,10952,0,0,0,0),
(19,0,10956,0,1,8,0,10950,0,0,0,0),
(19,0,10956,0,2,8,0,10954,0,0,0,0),
(19,0,10962,0,1,8,0,10950,0,0,0,0),
(19,0,10962,0,2,8,0,10954,0,0,0,0),
(19,0,10956,0,3,8,0,10952,0,0,0,0),
(19,0,10962,0,3,8,0,10952,0,0,0,0);
UPDATE `conditions` SET `elsegroup` = 0 WHERE `SourceTypeOrReferenceId` IN (19, 20) AND `SourceEntry` IN (10956, 10962);
UPDATE `quest_template` SET `NextQuestIdChain` = 10966, `ExclusiveGroup` = -10962, `NextQuestid` = 10966 WHERE `id` = 10962;
UPDATE `quest_template` SET `NextQuestIdChain` = 10966, `ExclusiveGroup` = -10962, `NextQuestid` = 10966 WHERE `id` = 10968;
UPDATE `quest_template` SET `NextQuestIdChain` = 10968 WHERE `id` = 10956;
UPDATE `quest_template` SET `PrevQuestId` = 10956 WHERE `id` = 10968;
DELETE FROM `conditions` WHERE `SourceEntry` = 10966;

-- Quest: Auchindoun and the Ring of Observance - 19050
DELETE FROM `creature` WHERE `guid` = 160285 AND `id` = 22831;
-- Quest: A Trip to the Dark Portal - 10952
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22818, 0, 2, 0, 75, 0, 100, 0, 0, 22833, 15, 1000, 15, 10952, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Children's Week - A Trip to the Dark Portal");