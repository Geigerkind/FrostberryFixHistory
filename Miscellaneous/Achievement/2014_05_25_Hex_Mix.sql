-- Hex Mix (Achievement) ID: 5761
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (24455, 24448, 24453, 24397, 24445, 24409, 24408, 24407, 24406, 24405, 24404, 24403);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24455, 24448, 24453, 24397, 24445, 24409, 24408, 24407, 24406, 24404, 24403);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 24405 AND `id` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(24445, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97916, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit ROSA'),
(24409, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97915, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit EULINDA'),
(24455, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97914, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit RELISSA'),
(24408, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97913, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit HARALD'),
(24404, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97912, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit MELASONG'),
(24406, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97911, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit LENZO'),
(24403, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97910, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit KALDRICK'),
(24407, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97909, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit ARINOTH'),
(24448, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97908, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit MICAH'),
(24453, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97907, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit TYLLAN'),
(24397, 0, 0, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97906, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit MAWANGO'),
(24405, 0, 2, 0, 1, 100, 0, 1000, 1000, 10, 10, 11, 97905, 3, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'ON OOC cast achievment credit MELISSA');