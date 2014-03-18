-- quest the universal key (ID: 26400)
-- Adding SAI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 4260;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4260;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`comment`) VALUES 
(4260,0,0,0,100,1,0,57,58490,1,0,0,0,0,18,50,'On IC - remove item - player near'),
(4260,0,1,0,100,1,0,56,58490,1,0,0,0,0,18,50,'On IC - additem - player near'),
(4260,0,2,0,100,1,0,57,58205,1,0,0,0,0,18,50,'On IC - remove item - player near');

