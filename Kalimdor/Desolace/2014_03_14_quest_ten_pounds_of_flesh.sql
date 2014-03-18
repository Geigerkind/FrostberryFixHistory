-- quest Ten Pounds of Flesh (ID: 14213)
-- creature loot template
DELETE FROM `creature_loot_template` WHERE `item` = 48857;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(4675, 48857, 28, 1, 0, 1, 2),
(4673, 48857, 27, 1, 0, 1, 2),
(4674, 48857, 27, 1, 0, 1, 2),
(4671, 48857, 24, 1, 0, 1, 2),
(4672, 48857, 22, 1, 0, 1, 2),
(4670, 48857, 18, 1, 0, 1, 2);

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 35581;

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35581;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(35581, 0, 0, 8, 100, 0, 67733, 1, 1, 1, 33, 35581, 0, 18, 100, 0, 'On spell hit - target player - give questcredit');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 67733;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`, `Comment`) VALUES 
(13,1,67733,0,0,31,0,3,35581,0,0,0,0,'','spell_implecit_target dummy creature');