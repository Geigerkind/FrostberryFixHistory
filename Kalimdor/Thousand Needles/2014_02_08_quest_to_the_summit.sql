-- quest to the summit (ID: 25478)

-- npc correction
DELETE FROM `creature` WHERE `guid` = 79235;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 40358;
UPDATE `smart_scripts` SET `entryorguid` = 40358 WHERE `entryorguid` = 23612;

-- condition
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 11372);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,11372,1,0,0,9,0,25478,0,0,0,0,0,'','quest needed for gossip to be shown');

-- Update gossip
UPDATE `gossip_menu_option` SET `option_id` = 1 WHERE (`menu_id` = 11372 AND `id` = 1);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 40358 AND `id` IN (2,3);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(40358,0,2,0,62,100,1,11372,1,0,0,33,39897,0,7,0,0,0,0,0,0,'On gossip select give questcredit'),
(40358,0,3,0,62,100,1,11372,1,0,0,62,1,0,7,0,0,-4304,-925,84,5,'On gossip select teleport');