-- quest Nothing a Couple of Melons Won't Fix (ID: 14193)
-- gameobject
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 195440;

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 35381;

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35381;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(35381, 0, 0, 8, 100, 0, 67402, 1, 1, 1, 33, 35381, 0, 18, 100, 0, 'On spell hit - target player - give questcredit');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 67402;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`, `Comment`) VALUES 
(13,1,67402,0,0,31,0,3,35381,0,0,0,0,'','spell_implecit_target dummy creature');