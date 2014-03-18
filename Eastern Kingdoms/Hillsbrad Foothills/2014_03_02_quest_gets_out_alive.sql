-- quest No One Here Gets Out Alive (ID: 28192)
-- creature
DELETE FROM `creature` WHERE `guid` IN (48301, 47357, 48329, 46985, 47551, 47411, 47025, 47731, 47243, 46806);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 47943);
DELETE FROM `creature_template_addon` WHERE `entry` = 47943;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 47781;
UPDATE `creature_template` SET `unit_flags` = 4, `unit_flags2` = 2 WHERE `entry` = 47943;

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 89160;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,1,89160,0,0,31,0,3,47943,0,0,0,0,'','spell implecit target');

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 47781 AND `id` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47781, 0, 0, 19, 100, 0, 28192, 0, 0, 0, 15, 28192, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On quest accept - target player - give questcredit');