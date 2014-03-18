-- quest to the walls! (ID: 24568)
-- Doing Relations
DELETE FROM `creature_questrelation` WHERE `id` = 37717 AND `quest` = 24568;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(37717, 24568);

DELETE FROM `creature_involvedrelation` WHERE `id` = 37717 AND `quest` = 24568;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(37717, 24568);

-- Updating creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 37717;

-- Adding creature_text
DELETE FROM `creature_text` WHERE `id` = 0 and `entry` = 37717;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(37717, 0, 0, 'Okay, I hope I can count on your support!', 12, 0, 100, 16, 0, 0, 'Winnia Pineforest - To the Walls!');

-- Adding gossip_menu_option
DELETE FROM `gossip_menu_option` WHERE `id` = 0 AND `menu_id` = 10926;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(10926, 0, 0, 'You need to prepare the troops in order to defend the gates!', 1, 1);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 37717;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(37717, 0, 0, 62, 100, 0, 10926, 0, 0, 0, 84, 0, 0, 1, 0, 0, 'On gossip select - play emote and say text'),
(37717, 0, 1, 62, 100, 0, 10926, 0, 0, 0, 33, 37719, 0, 7, 0, 0, 'On gossip select - give questcredit'),
(37717, 0, 2, 62, 100, 0, 10926, 0, 0, 0, 72, 0, 0, 7, 0, 0, 'On gossip select - close gossip');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 10926;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,10926,0,0,0,9,0,24568,0,0,0,0,0,'','quest needed for gossip to be shown');

-- Deleting false npc
DELETE FROM `creature` WHERE `guid` = 77936;