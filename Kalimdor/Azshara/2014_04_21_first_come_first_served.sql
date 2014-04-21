-- First Come, First Served (ID: 24437)
-- Delete trash
DELETE FROM `gameobject` WHERE `id` = 201302;

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` IN (36951, 36952, 36953);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,36951,0,0,30,1,201302,30,0,0,0,0,'','Work if near gameobject'),
(22,1,36952,0,0,30,1,201302,30,0,0,0,0,'','Work if near gameobject'),
(22,1,36953,0,0,30,1,201302,30,0,0,0,0,'','Work if near gameobject');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36951, 36952, 36953);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36951, 36952, 36953);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36953, 0, 0, 0, 1, 100, 0, 20, 20, 20, 20, 33, 36953, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On OOC give questcredit'),
(36952, 0, 0, 0, 1, 100, 0, 20, 20, 20, 20, 33, 36952, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On OOC give questcredit'),
(36951, 0, 0, 0, 1, 100, 0, 20, 20, 20, 20, 33, 36951, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On OOC give questcredit');