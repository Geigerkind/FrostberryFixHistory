-- quest Trial by Magma (ID: 28438/28266)
-- cleaning up 
DELETE FROM `creature` WHERE `id` = 48156;
UPDATE `creature_template` SET `unit_flags` = 4, `MovementType` = 0 WHERE `entry` = 48156;
UPDATE `creature_template` SET `AIName` = 'SmartAI'  WHERE `entry` = 48159;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48159;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `target_type`, `target_param1`, `target_param2`, `comment`) VALUES 
(48159, 0, 0, 62, 100, 0, 12397, 0, 12, 48156, 1, 60000, 1, 11, 9520, 50, 'On gossip select - give questcredit'),
(48159, 0, 1, 62, 100, 0, 12397, 0, 72, 0, 0, 0, 0, 1, 0, 0, 'On gossip select - close gossip');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12397;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,12397,0,0,0,29,0,48156,50,0,1,0,0,'','If Creature Near gossip is not shown');