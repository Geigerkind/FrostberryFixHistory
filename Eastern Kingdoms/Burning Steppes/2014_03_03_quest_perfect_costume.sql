-- quest perfect costume (ID: 28428, 28205, 28202, 28203, 28429, 28204, 28431, 28430)
-- cleaning up
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (12376, 12371) AND `id` = 2;

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 48001;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48001;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES 
(48001, 0, 0, 62, 100, 0, 12376, 0, 33, 47910, 0, 7, 'On gossip select - give questcredit'),
(48001, 0, 1, 62, 100, 0, 12376, 0, 72, 0, 0, 1, 'On gossip select - close gossip');