-- quest Hand-Me-Downs (ID: 14469)
-- update creature
UPDATE `creature_template` SET `npcflag` = 1, `AIName` = 'SmartAI' WHERE `entry` = 36756;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 36756;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(36756, 0, 0, 64, 100, 1, 0, 0, 0, 0, 56, 49599, 1, 18, 100, 0, 'On gossip hello - target player - give questcredit'),
(36756, 0, 1, 64, 100, 1, 0, 0, 0, 0, 37, 0, 0, 1, 0, 0, 'On gossip hello - self - force despawn');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 36756;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,36756,0,0,9,0,14469,0,0,0,0,0,'','Need to be player to trigger event'),
(22,2,36756,0,0,9,0,14469,0,0,0,0,0,'','Need to be player to trigger event');