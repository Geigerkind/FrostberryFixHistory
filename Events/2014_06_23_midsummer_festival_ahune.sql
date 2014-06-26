-- Midsummer Festival Ahune
-- Ahune: 25740
-- http://i.imgur.com/8MqeAWE.png
-- Trash
DELETE FROM `creature` WHERE `guid` IN (193047, 193052, 193076, 193077);
DELETE FROM `gameobject` WHERE `guid` IN (97506, 97502, 97503, 97505);

-- Assigning creature to event
DELETE FROM `game_event_creature` WHERE `guid` IN (193049);
INSERT INTO `game_event_creature` VALUES
(1, 193049);

-- SAI Work
-- Trigger
DELETE FROM `creature_template` WHERE `entry` = 80007;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(80007, 4449, 4449, 4449, 4449, 'Summon Ahune - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 1);

DELETE FROM `creature` WHERE `id` = 80007;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('80007','547','3717','3717','3','1','0','0','-99.1021','-233.753','-1.22297','1.52907','86400','0','0','0','0','0','0','0','0');

-- Ice Stone (Summon Ahune)
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 187882;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (187882);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(187882, 1, 0, 1, 62, 100, 0, 11389, 0, 0, 0, 12, 25740, 3, 3000000, 3000000, 0, 0, 11, 80007, 300, 0, 0, 0, 0, 'On gossip select summon ahune'),
(187882, 1, 1, 2, 61, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous Event - close gossip'),
(187882, 1, 2, 3, 61, 100, 0, 0, 0, 0, 0, 99, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous Event - set gob loot state'),
(187882, 1, 3, 0, 61, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous Event - despawn');