-- energized geode

DELETE FROM `creature_template_addon` WHERE `entry` = 43254;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 43254;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 43254;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`, `comment`) VALUES 
(43254, 0, 0, 1, 100, 1, 1, 1, 1, 1, 11, 86801, 2, 1, 0, 'On spawn - give electrelized aura');