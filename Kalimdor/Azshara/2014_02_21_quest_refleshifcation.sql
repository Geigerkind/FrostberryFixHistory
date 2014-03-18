-- quest refleshification (ID: 14194)
-- Updating npc
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags` = 0 WHERE `entry` = 35257;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35257;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35257, 0, 0, 8, 100, 1, 67362, 1, 1, 1, 33, 35375, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On spell hit - give questcredit'),
(35257, 0, 1, 8, 100, 1, 67362, 1, 1, 1, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spell hit - despawn');