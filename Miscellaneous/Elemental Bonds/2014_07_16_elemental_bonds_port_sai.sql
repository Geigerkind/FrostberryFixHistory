-- Elemental Bonds
-- Port SAI
UPDATE `creature_template` SET `AIName` = 'SmartAI'  WHERE `entry` IN (53524, 53738);

-- Teleport to Uldum:
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12985;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,12985,0,0,0,28,0,29335,0,0,0,0,0, '', 'Show gossip if player is on quest');

UPDATE `smart_scripts` SET `action_type` = 85, `link` = 1 WHERE `entryorguid` = 54312 AND `id` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 54312 AND `id` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54312, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous event - close gossip');

-- Teleport to Thrall in Uldum
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12883;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,12883,0,0,0,9,0,29327,0,0,0,0,0, '', 'Show gossip if player is on quest');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 53524;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53524, 0, 0, 1, 62, 100, 0, 12883, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, -11228.5, 324.24, 630.5, 3.5, 'On gossip select - teleport player'),
(53524, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous event - close gossip');

-- Teleport to the Abyssal Maw
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12938;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,12938,0,0,0,28,0,29336,0,0,0,0,0, '', 'Show gossip if player is on quest');

UPDATE `smart_scripts` SET `action_type` = 85, `link` = 1 WHERE `entryorguid` = 53519 AND `id` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 53519 AND `id` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53519, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous event - close gossip');

-- Teleport to Deepholm
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12930;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,12930,0,0,0,28,0,29337,0,0,0,0,0, '', 'Show gossip if player is on quest');

UPDATE `smart_scripts` SET `action_type` = 85, `link` = 1 WHERE `entryorguid` = 53652 AND `id` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 53652 AND `id` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53652, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous event - close gossip');

-- Teleport to Thrall in Deepholm
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12940 AND `SourceEntry` = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,12940,0,0,0,9,0,29329,0,0,0,0,0, '', 'Show gossip if player is on quest'),
(15,12940,0,0,0,29,0,53739,20,0,1,0,0, '', 'Show gossip if player is not near creature');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 53738 AND `id` IN (0, 1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53738, 0, 0, 1, 62, 100, 0, 12940, 0, 0, 0, 62, 646, 0, 0, 0, 0, 0, 7, 0, 0, 1232.1, -217.7, 21, 3.5, 'On gossip select - teleport player'),
(53738, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous event - close gossip');

-- Teleport into the Firelands // Issue cause of some script ?
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14, 15) AND `SourceGroup` = 12943;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,12943,0,0,0,9,0,29338,0,0,0,0,0, '', 'Show gossip if player is on quest'),
(14,12943,18208,0,0,9,0,29338,0,0,0,0,0, '', 'Show gossip menu if player is on quest');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 53750;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53750, 0, 0, 1, 62, 100, 0, 12943, 0, 0, 0, 62, 861, 0, 0, 0, 0, 0, 7, 0, 0, 1447.15, 340.32, 49.5, 0.8, 'On gossip select - teleport player'),
(53750, 0, 1, 2, 61, 100, 0, 0, 0, 0, 0, 33, 53738, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'Linked with previous event - give questcredit'),
(53750, 0, 2, 0, 61, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous event - close gossip');