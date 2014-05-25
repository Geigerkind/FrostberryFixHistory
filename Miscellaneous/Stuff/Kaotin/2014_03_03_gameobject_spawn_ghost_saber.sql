-- spawn Ghost Saber
-- adding SAI
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 13359;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 13359;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `target_type`, `target_param1`, `target_param2`, `comment`) VALUES 
(13359, 1, 0, 64, 100, 1, 0, 0, 0, 0, 12, 3619, 1, 60000, 60000, 7, 0, 0, 'On gossip hello - spawn Ghost Saber');