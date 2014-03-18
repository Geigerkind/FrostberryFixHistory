-- giving adventures guide option if the player lost it
-- Selina Dourman: 10445

-- Adding gossip menu option
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 13113 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`)
VALUES (13113,0,0,"I lost my Darkmoon Adventurer's Guide!",1,1,0,0,0,0,'');

-- Adding SAI
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 10445 AND `event_type` = 62 AND `action_type` = 56 AND `event_param1` = 13113);
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 10445 AND `event_type` = 62 AND `action_type` = 72 AND `event_param1` = 13113);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES 
(10445,0,1,62,100,0,13113,0,56,71634,1,7,"on gossip select give adventures guide actioninvoker"),
(10445,0,2,62,100,0,13113,0,72,0,0,0,"on gossip select close gossip");

-- Adding condition
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 13113 AND `SourceEntry` = 0 AND `ConditionValue1` = 71634);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,13113,0,0,0,2,0,71634,1,0,1,0,0,'',"if player has item gossip is not shown");


