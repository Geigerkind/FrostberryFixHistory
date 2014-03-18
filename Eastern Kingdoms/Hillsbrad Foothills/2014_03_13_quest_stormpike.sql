-- quest Stormpike Rendezvous (ID: 28348)
-- Delete Trash
DELETE FROM `creature` WHERE `guid` = 27176;

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI', `npcflag` = 3, `gossip_menu_id` = 12430 WHERE `entry` = 48218;

-- menu
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 12430 AND `id` = 0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(12430, 0, 0, "Tell me about Stormpike!", 1, 1);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48218 AND `id` IN  (0,1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48218, 0, 0, 62, 100, 0, 12430, 0, 0, 0, 15, 28348, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select give questcredit'),
(48218, 0, 1, 62, 100, 0, 12430, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On gossip select close gossip');

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12430;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,12430,0,0,0,9,0,28348,0,0,0,0,'','quest needed for gossip to be shown');