-- quest Helcular's Rod Giveth... (ID: 28331)
-- condition
DELETE FROM `conditions` WHERE `SourceEntry` = 89821;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,1,89821,0,0,31,0,3,48269,0,0,0,0,'','spell implecit target');

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 48269;
UPDATE `creature` SET `spawntimesecs` = 20 WHERE `id` = 48269;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48269;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48269, 0, 0, 23, 100, 1, 89824, 1, 1, 1, 33, 48269, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 1 stack - give questcredit'),
(48269, 0, 1, 23, 100, 1, 89821, 1, 1, 1, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On having aura 1 stack - despawn');
