-- Its about time (ID: 27156)

UPDATE `creature_template` SET `gossip_menu_id` = 11943,`AIName` = 'SmartAI' WHERE `entry` = 45162;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 45162 AND `event_param1` = 11943);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (45162,0,62,100,1,11943,0,2,14,1,'On Gossip select set Faction to hostile');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 11943);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,11943,0,0,0,9,0,27156,0,0,0,0,0,'','quest needed for gossip to be shown');