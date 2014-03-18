-- quest We're Here to Do One Thing, Maybe Two... (ID: 25945)
-- waypoints
DELETE FROM `waypoints` WHERE `entry` = 41744 AND `pointid` IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(41744, 1, 2143.9, -1037.5, 100, 'Horde: Do One Thing, Maybe Two... 1'),
(41744, 2, 2172.4, -943, 94, 'Horde: Do One Thing, Maybe Two... 2'),
(41744, 3, 2165.4, -874, 99, 'Horde: Do One Thing, Maybe Two... 3'),
(41744, 4, 2221, -782.6, 106.2, 'Horde: Do One Thing, Maybe Two... 4'),
(41744, 5, 2140.1, -678.9, 104, 'Horde: Do One Thing, Maybe Two... 5'),
(41744, 6, 2058, -531, 100.4, 'Horde: Do One Thing, Maybe Two... 6'),
(41744, 7, 2039, -398, 95.4, 'Horde: Do One Thing, Maybe Two... 7'),
(41744, 8, 1985, -398.2, 98.12, 'Horde: Do One Thing, Maybe Two... 8'),
(41744, 9, 1932.63, -402, 104.5, 'Horde: Do One Thing, Maybe Two... 9'),
(41744, 10, 1891, -408.3, 112, 'Horde: Do One Thing, Maybe Two... 10'),
(41744, 11, 1857.6, -414.8, 120.5, 'Horde: Do One Thing, Maybe Two... 11'),
(41744, 12, 1842.56, -419.7, 124, 'Horde: Do One Thing, Maybe Two... 12'),
(41744, 13, 1826.64, -423.54, 126.7, 'Horde: Do One Thing, Maybe Two... 13'),
(41744, 14, 1794.5, -428.5, 127, 'Horde: Do One Thing, Maybe Two... 14'),
(41744, 15, 1777, -431.3, 123.15, 'Horde: Do One Thing, Maybe Two... 15'),
(41744, 16, 1743.7, -431, 111.4, 'Horde: Do One Thing, Maybe Two... 16'),
(41744, 17, 1694.55, -420.85, 95.4, 'Horde: Do One Thing, Maybe Two... 17'),
(41744, 18, 1635.6, -439, 72.6, 'Horde: Do One Thing, Maybe Two... 18'),
(41744, 19, 1589.6, -444.42, 60.65, 'Horde: Do One Thing, Maybe Two... 19'),
(41744, 20, 1545, -452.2, 55.6, 'Horde: Do One Thing, Maybe Two... 20');

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 41744;
DELETE FROM `creature` WHERE `guid` IN (72605, 71917);

-- Adding npc_spellclick_spells
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 41744 AND `spell_id` = 62309;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(41744, 62309, 1, 0);

-- placing the npc into the vehicle
DELETE FROM `vehicle_template_accessory` WHERE `entry` = 41744 AND `accessory_entry` IN (41743, 40820);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
-- (41744, 41743, 0, 1, 'Kromgar Caravan Hauler - Do one thing, maybe two', 5, 1000000),
(41744, 40820, 1, 1, 'The Kodo - Do one thing, maybe two', 5, 1000000);

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` = 41744;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(41744, 0, 0, 27, 100, 1, 1, 1, 0, 0, 53, 1, 41744, 0, 25945, 1000000, 0, 1, 0, 0, 'On spell hit - start wp'),
(41744, 0, 1, 40, 100, 1, 20, 0, 0, 0, 15, 25945, 0, 0, 0, 0, 0, 18, 50, 0, 'On wp reached - give questcredit'),
(41744, 0, 2, 40, 100, 1, 20, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 'On wp reached - despawn');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 41744;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,41744,0,0,31,0,4,0,0,0,0,0,'','Need to be player to trigger event');