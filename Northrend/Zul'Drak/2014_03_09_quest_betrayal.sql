-- quest betrayal (ID: 12713)
-- fac 974
-- Dummy Target Spell: 54694
-- corpse explosion: 81876
-- trigger
DELETE FROM `creature_template` WHERE `entry` IN (70030, 70031, 70032, 70033, 70034, 70035);
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`) VALUES 
(70030, 4449, 4449, 4449, 4449, 'Betrayal - Trigger 1', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70031, 4449, 4449, 4449, 4449, 'Betrayal - Trigger 2', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70032, 4449, 4449, 4449, 4449, 'Betrayal - Trigger 3', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70033, 4449, 4449, 4449, 4449, 'Betrayal - Trigger 4', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70034, 4449, 4449, 4449, 4449, 'Betrayal - Trigger 5', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI'),
(70035, 4449, 4449, 4449, 4449, 'Betrayal - Trigger 6', 70, 70, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI');

DELETE FROM `creature` WHERE `id` IN (70030, 70031, 70032, 70033, 70034, 70035);
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70030','571','66','4314','1','65535','0','0','6166.27','-2064.65','586.76','1.6','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70031','571','66','4314','1','65535','0','0','6127.91','-2009.13','586.759','6.08','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70032','571','66','4314','1','65535','0','0','6183.93','-1970.15','586.759','4.59801','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70033','571','66','4314','1','65535','0','0','6224.16','-2026.73','586.765','2.96113','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70034','571','66','4314','1','65535','0','0','6181.1','-1986.25','590.879','4.54718','300','0','0','4050','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('70035','571','66','4314','1','65535','0','0','6162.54','-2021.71','590.879','6.0787','300','0','0','4050','0','0','0','0','0');

UPDATE `creature_template` SET `faction_h` = 974, `faction_a` = 974, `unit_flags` = 0 WHERE `entry` = 28998;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 37857;
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 202357;
UPDATE `creature_template` SET `unit_flags` = 32768, `spell4` = 54135, `spell5` = 54132, `spell6` = 54136 WHERE `entry` = 28931;

-- waypoints
DELETE FROM `waypoints` WHERE `entry` = 37857 AND `pointid` = 1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(37857, 1, 6177.2, -2007.4, 590.9, 'Horde: Betrayal 1');

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 28503 AND `id` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (37857, 70035, 202357);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 28998 AND `id` IN (11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`,`action_param5`,`action_param6`, `target_type`,`target_param1`,`target_param2`,`target_x`,`target_y`,`target_z`,`target_o`, `comment`) VALUES 
(28503, 0, 1, 62, 100, 0, 9731, 0, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 6163.2, -2016, 591, 6.02, 'on gossip select - teleport'),
(28998, 0, 11, 4, 100, 1, 0, 0, 0, 0, 12, 28931, 2, 30000000, 0, 0, 0, 11, 70030, 1000, 0, 0, 0, 0, 'on aggro summon Blightblood Troll'),
(28998, 0, 12, 4, 100, 1, 0, 0, 0, 0, 12, 28931, 2, 30000000, 0, 0, 0, 11, 70031, 1000, 0, 0, 0, 0, 'on aggro summon Blightblood Troll'),
(28998, 0, 13, 4, 100, 1, 0, 0, 0, 0, 12, 28931, 2, 30000000, 0, 0, 0, 11, 70032, 1000, 0, 0, 0, 0, 'on aggro summon Blightblood Troll'),
(28998, 0, 14, 4, 100, 1, 0, 0, 0, 0, 12, 28931, 2, 30000000, 0, 0, 0, 11, 70033, 1000, 0, 0, 0, 0, 'on aggro summon Blightblood Troll'),
(28998, 0, 15, 1, 100, 1, 1, 1, 1, 1, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on ooc - force despawn Blightblood Troll'),
(28998, 0, 16, 1, 100, 1, 1, 1, 1, 1, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on ooc - force despawn Blightblood Troll'),
(28998, 0, 17, 1, 100, 1, 1, 1, 1, 1, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on ooc - force despawn Blightblood Troll'),
(28998, 0, 18, 1, 100, 1, 1, 1, 1, 1, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on ooc - force despawn Blightblood Troll'),
(28998, 0, 19, 6, 100, 1, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on death - force despawn Blightblood Troll'),
(28998, 0, 20, 6, 100, 1, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on death - force despawn Blightblood Troll'),
(28998, 0, 21, 6, 100, 1, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on death - force despawn Blightblood Troll'),
(28998, 0, 22, 6, 100, 1, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on death - force despawn Blightblood Troll'),
(28998, 0, 23, 2, 100, 1, 1, 10, 1, 1, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on 10% HP - force despawn Blightblood Troll'),
(28998, 0, 24, 2, 100, 1, 1, 10, 1, 1, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on 10% HP - force despawn Blightblood Troll'),
(28998, 0, 25, 2, 100, 1, 1, 10, 1, 1, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on 10% HP - force despawn Blightblood Troll'),
(28998, 0, 26, 2, 100, 1, 1, 10, 1, 1, 51, 0, 0, 0, 0, 0, 0, 11, 28931, 1000, 0, 0, 0, 0, 'on 10% HP - force despawn Blightblood Troll'),
(28998, 0, 27, 2, 100, 1, 1, 10, 1, 1, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on 10% HP - change faction - self'),
(28998, 0, 28, 2, 100, 1, 1, 10, 1, 1, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on 10% HP - stop autoattack - self'),
(28998, 0, 29, 2, 100, 1, 1, 10, 1, 1, 12, 37857, 2, 20000, 0, 0, 0, 11, 70034, 1000, 0, 0, 0, 0, 'on 10% HP - summon Lich King'),
(28998, 0, 30, 2, 100, 1, 1, 10, 1, 1, 66, 1.34, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on 10% HP - change orientation - self'),
(28998, 0, 31, 8, 100, 1, 54694, 1, 1, 1, 11, 81876, 6, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on spellhit - cast explosion spell'),
(28998, 0, 32, 8, 100, 1, 54694, 1, 1, 1, 41, 600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on spellhit - force despawn - self'),
(37857, 0, 0, 1, 100, 1, 1, 1, 1, 1, 53, 0, 37857, 0, 12713, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on ooc - start wp'),
(37857, 0, 1, 40, 100, 1, 1, 0, 0, 0, 11, 54694, 6, 0, 0, 0, 0, 11, 28998, 100, 0, 0, 0, 0, 'on wp reached - cast dummy spell'),
(37857, 0, 2, 40, 100, 1, 1, 0, 0, 0, 11, 54694, 6, 0, 0, 0, 0, 11, 70035, 100, 0, 0, 0, 0, 'on wp reached - cast dummy spell'),
(70035, 0, 0, 8, 100, 1, 54694, 1, 1, 1, 11, 54253, 6, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on spellhit - summon drakurus skull'),
(202357, 1, 0, 62, 100, 0, 11091, 0, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 5802.2, -1994.5, 235, 3.1, 'on gossip select - teleport');