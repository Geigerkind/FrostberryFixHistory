-- quest A Blight Upon the Land (ID: 28237)
-- update quest
UPDATE `creature_template` SET `lootid` = 48080, `questitem1` = 63330 WHERE `entry` = 47781;

-- menu
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 12342;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(12342, 0, 0, "I know what you've done!", 1, 1);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 47781 AND `id` IN (1,2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47781, 0, 1, 62, 100, 1, 12342, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On gossip select set faction hostile'),
(47781, 0, 2, 62, 100, 1, 12342, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On gossip select close gossip'),
(47781, 0, 3, 1, 100, 1, 1, 1, 1, 1, 2, 68, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC set faction normal');

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12342;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,12342,0,0,0,9,0,28237,0,0,0,0,'','quest needed for gossip to be shown');

-- Delete Trash
DELETE FROM `creature` WHERE `guid` IN (27564, 27573, 21230);