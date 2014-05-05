-- The Blackmaw Doublecross (ID: 14435)
-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI'  WHERE `entry` = 36618;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 36618;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36618, 0, 0, 0, 6, 100, 1, 0, 0, 0, 0, 33, 36625, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On death give questcredit');