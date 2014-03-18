-- quest Coastal Delicacies (ID: 28146)
-- summon hungry mine creeper spell: 88762 Entry: 47662
-- murlocs: 2374 | 2375

-- Update creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags` = 131072 WHERE `entry` = 47662;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 47551;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2374, 2375) AND `id` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 47662 AND `id` IN (0,1);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 47551 AND `id` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`, `comment`) VALUES 
(2374, 0, 2, 6, 100, 1, 0, 0, 0, 0, 33, 47752, 0, 0, 0, 0, 0, 18, 100, 0, 0, 'On death - give questcredit'),
(2375, 0, 2, 6, 100, 1, 0, 0, 0, 0, 33, 47752, 0, 0, 0, 0, 0, 18, 100, 0, 0, 'On death - give questcredit'),
(47551, 0, 0, 19, 100, 0, 28146, 0, 0, 0, 85, 88762, 7, 0, 0, 0, 0, 7, 0, 0, 0, 'On target accepted quest - invoker cast - summon hungry mine creeper');




