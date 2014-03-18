-- quest Heroes of Darrowshire (ID: 27388)
-- making gossip_menu_option
UPDATE `gossip_menu_option` SET `id` = 0 WHERE `id` = 2 AND `menu_id` = 3864;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3864;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(3864, 1, 0, 'Can you give me the Extended Annals of Darrowshire?', 1, 1);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 11063 AND `id` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(11063, 0, 2, 62, 100, 0, 3864, 1, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip');

UPDATE `smart_scripts` SET `event_param1` = 3864, `event_param2` = 1, `event_type` = 62 WHERE `entryorguid` = 11063 AND `id` = 1;

-- condition
-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 3864;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,3864,1,0,0,9,0,27388,0,0,0,0,0,'','Gossip shown if player on quest'),
(15,3864,1,0,0,2,0,13202,1,0,1,0,0,'','Gossip not shown if player has item');