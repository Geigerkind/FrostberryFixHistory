-- Let's See What You've Got, Zanzil ID: 26534
-- by Albea

DELETE FROM `gossip_menu` WHERE (`entry` = 65534);
INSERT INTO `world`.`gossip_menu`(`entry`,`text_id`)
VALUES ('65534','21');
		
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 65534 AND `id` = 50001);
INSERT INTO `gossip_menu_option`(`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_poi_id`)
VALUES ('65534','50001','0','Allright, test me, if you dare!','1','1','0');
		
UPDATE `creature_template` SET `gossip_menu_id` = 65534, `AIName` = 'SmartAI' WHERE `entry` = 43203;
UPDATE `creature_template` SET `gossip_menu_id` = 65534, `AIName` = 'SmartAI' WHERE `entry` = 43204;
UPDATE `creature_template` SET `gossip_menu_id` = 65534, `AIName` = 'SmartAI' WHERE `entry` = 43205;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 43203 AND `event_type` = 62 AND `action_type` = 33 AND `event_param1` = 65534);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (43203,0,62,100,0,65534,50001,33,43203,7,'On gossip select questcredit');

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 43204 AND `event_type` = 62 AND `action_type` = 33 AND `event_param1` = 65534);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (43204,0,62,100,0,65534,50001,33,43204,7,'On gossip select questcredit');

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 43205 AND `event_type` = 62 AND `action_type` = 33 AND `event_param1` = 65534);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (43205,0,62,100,0,65534,50001,33,43205,7,'On gossip select questcredit');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 65534 AND `SourceEntry` = 50001);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,65534,50001,0,0,9,0,26534,0,0,0,0,0,'','quest needed for gossip to be shown');