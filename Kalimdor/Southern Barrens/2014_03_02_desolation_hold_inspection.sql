-- quest desolation hold inspection (ID: 24577)
-- Update Questflags
UPDATE `quest_template` SET `flags` = 8 WHERE `id` = 24577;

-- Update creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 37811;

-- Update gossip_menu_option
UPDATE `gossip_menu_option` SET `action_menu_id` = 10938 WHERE `menu_id` = 10935;
UPDATE `gossip_menu_option` SET `action_menu_id` = 10937 WHERE `menu_id` = 10938;

-- Adding SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 37811;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37811, 0, 0, 62, 100, 1, 10937, 0, 0, 0, 33, 37816, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select - give questcredit'),
(37811, 0, 1, 62, 100, 1, 10937, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select - close gossip');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 10935;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,10935,0,0,0,9,0,24577,0,0,0,0,0,'','quest needed for gossip to be shown');
