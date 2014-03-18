-- written by Albea
-- the goblin one
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 43376 AND `event_type` = 62 AND `action_type` = 2 AND `event_param1` = 65535);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (43376,0,62,100,0,65535,50000,2,14,1,'On Gossip select set Faction to hostile');

UPDATE `creature_template` SET `gossip_menu_id` = 65535, `AIName` = 'SmartAI' WHERE `entry` = 43376;

DELETE FROM `gossip_menu` WHERE (`entry` = 65535);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (65535,21);

DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 65535 AND `id` = 50000);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_poi_id`) VALUES 
(65535,50000,0,'Little kid, do not underestimate me!',1,1,0);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 65535 AND `SourceEntry` = 50000);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,65535,50000,0,0,9,0,26595,0,0,0,0,0,'','quest needed for gossip to be shown');

-- the nightelf one
UPDATE `creature_template` SET `gossip_menu_id` = 65533, `AIName` = 'SmartAI', `npcflag` = 1 WHERE `entry` = 43377;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 43377 AND `event_type` = 62 AND `action_type` = 2 AND `event_param1` = 65533);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (43377,0,62,100,0,65533,49990,2,14,1,'On Gossip select set Faction to hostile');

DELETE FROM `gossip_menu` WHERE (`entry` = 65533);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (65533,21);

DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 65533 AND `id` = 0);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 65533 AND `id` = 49990);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_poi_id`) VALUES 
(65533,49990,0,'Little kid, do not underestimate me!',1,1,0);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 65533 AND `SourceEntry` = 49990);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,65533,49990,0,0,9,0,26595,0,0,0,0,0,'','quest needed for gossip to be shown');