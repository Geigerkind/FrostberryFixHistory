-- desolace quest The emerging threat (ID: 14256)
-- creature 490 16777216
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 35773;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `iconName` = 'vehichleCursor', `vehicleID` = 837, `unit_flags` = 16777988, `dynamicflags` = 2048, `InhabitType` = 5, `movementType` = 0 WHERE `entry` = 35779;
DELETE FROM `creature` WHERE `id` = 35779;


-- Adding npc_spellclick_spells
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 35779 AND `spell_id` = 62309;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(35779, 62309, 1, 0);

-- adding fly aura
DELETE FROM `creature_template_addon` WHERE `entry` = 35779;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(35779, 0, 0, 33554432, 0, 0, 61307);

-- waypoints
DELETE FROM `waypoints` WHERE `entry` = 35779 AND `pointid` IN (1,2,3,4,5,6,7,8,9,10,11);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(35779, 1, -380.4, 2474, 92, 'Horde: The emerging Threat 1'),
(35779, 2, -355, 2432, 117, 'Horde: The emerging Threat 3'),
(35779, 3, -297, 2449, 118, 'Horde: The emerging Threat 3'),
(35779, 4, 199, 2850, 118, 'Horde: The emerging Threat 4'),
(35779, 5, 244, 2914, 118, 'Horde: The emerging Threat 5'),
(35779, 6, 227, 2993, 118, 'Horde: The emerging Threat 6'),
(35779, 7, 128, 3005, 118, 'Horde: The emerging Threat 7'),
(35779, 8, -372, 2498, 118, 'Horde: The emerging Threat 8'),
(35779, 9, -388, 2445, 95, 'Horde: The emerging Threat 9'),
(35779, 10, -360, 2442, 84, 'Horde: The emerging Threat 10'),
(35779, 11, -366, 2479, 75.7, 'Horde: The emerging Threat 11');


-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35779, 35773);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(35779, 0, 0, 27, 100, 1, 1, 1, 0, 0, 33, 35779, 0, 0, 0, 0, 0, 18, 100, 0, 'On passenger boarded - target player - give questcredit'),
(35779, 0, 1, 27, 100, 1, 1, 1, 0, 0, 53, 1, 35779, 0, 14256, 0, 0, 1, 0, 0, 'On passenger boarded - self - start wp'),
(35779, 0, 2, 40, 100, 1, 11, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 'On wp reached - force despawn - self'),
(35773, 0, 2, 19, 100, 0, 14256, 0, 0, 0, 12, 35779, 2, 120000, 0, 0, 0, 11, 11863, 30, 'On quest accept - summon Vehicle');
