-- Dread Head Redemption (ID: 13842)
-- gossip_menu_option
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10396;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_poi_id`) VALUES 
(10396,0,0,"I know, what you've done!",1,1,0);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 33760 AND `id` = 14;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES 
(33760,0,14,62,100,0,10396,0,2,14,1,'On Gossip select set Faction to hostile');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 10396;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,10396,0,0,0,9,0,13842,0,0,0,0,0,'','quest needed for gossip to be shown');

-- loot
UPDATE `creature_template` SET `lootid` = 44414 WHERE `entry` = 33760;