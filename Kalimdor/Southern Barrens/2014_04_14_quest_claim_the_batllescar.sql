-- Claim the Battlescar (24618/25081)
-- Giving gameobjects an AIName
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 201876;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 201876;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`comment`) VALUES 
(201876,1,0,0,64,100,0,0,0,0,0,15,24618,0,7,0,0,'On gossip hello give questcredit'),
(201876,1,1,0,64,100,0,0,0,0,0,15,25081,0,7,0,0,'On gossip hello give questcredit');

