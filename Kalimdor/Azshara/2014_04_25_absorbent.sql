-- absorbent (ID: 14323)
-- quest
UPDATE `quest_template` SET `flags` = 0 WHERE `id` = 14323;

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI'  WHERE `entry` = 36131;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 36131;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36131, 0, 0, 1, 24, 100, 1, 68413, 1, 1, 1, 11, 68412, 3, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On target has aura give questcredit'),
(36131, 0, 1, 0, 61, 100, 1, 0, 0, 0, 0, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event despawn');