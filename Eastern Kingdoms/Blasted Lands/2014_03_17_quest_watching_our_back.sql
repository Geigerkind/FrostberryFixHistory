-- quest Watching Our Back (ID: 25695)
-- updating object
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 203226;
DELETE FROM `creature_template` WHERE `entry` = 203226;
INSERT INTO `creature_template` (`entry`,`modelid1`,`name`,`AIName`,`unit_flags`,`unit_flags2`) VALUES 
(203226, 4449, 'Watching Our Back KillCredit','SmartAI',4,2);

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 203226 WHERE `id` = 25695;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 203226;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`comment`) VALUES 
(203226,1,0,64,100,0,0,33,203226,0,0,0,0,0,18,20,0,'On Gossip Hello give questcredit');