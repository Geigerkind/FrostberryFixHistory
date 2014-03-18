-- quest scrapped golems (ID: 28226)
-- war reaver 7039
-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 7039;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 7039 AND `id` IN (0,1,2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES 
(7039, 0, 0, 6, 40, 1, 11, 89413, 19, 1, 'on death - cast spell - self'),
(7039, 0, 1, 6, 40, 1, 11, 89416, 19, 1, 'on death - cast spell - self'),
(7039, 0, 2, 6, 40, 1, 11, 89417, 19, 1, 'on death - cast spell - self'),
(7039, 0, 3, 6, 40, 1, 11, 89418, 19, 1, 'on death - cast spell - self');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 7039;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,7039,0,0,9,0,28226,0,0,0,0,0,'','Only happen if player is on quest'),
(22,2,7039,0,0,9,0,28226,0,0,0,0,0,'','Only happen if player is on quest'),
(22,3,7039,0,0,9,0,28226,0,0,0,0,0,'','Only happen if player is on quest'),
(22,4,7039,0,0,9,0,28226,0,0,0,0,0,'','Only happen if player is on quest');
