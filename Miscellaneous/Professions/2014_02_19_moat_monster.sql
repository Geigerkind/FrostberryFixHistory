-- moat monster (ID: 29361)
-- Spell: 99508
-- moat monster: 53590

-- condition spell_implecit_target
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 99508;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`, `Comment`) VALUES
(13,1,99508,0,0,31,0,3,53590,0,0,0,0,'','spell_implecit_target dummy creature');

-- Creature
DELETE FROM `creature` WHERE `id` = 53590;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 53590;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 53590;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`comment`)
VALUES (53590,0,0,0,8,100,1,99508,1,0,0,33,53592,0,7,0,0,'On Spellhit give questcredit');