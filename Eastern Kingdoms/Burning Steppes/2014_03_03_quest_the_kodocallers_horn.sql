-- quest the Kodocaller's Horn (ID: 28435)
-- updates
UPDATE `quest_template` SET `flags` = 1032 WHERE `id` = 28435;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 48111;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48111;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`, `target_param1`, `comment`) VALUES 
(48111, 0, 0, 23, 100, 1, 89477, 1, 1, 1, 33, 48112, 0, 18, 20, 'On has aura - give questcredit'),
(48111, 0, 1, 23, 100, 1, 89477, 1, 1, 1, 41, 1000, 0, 1, 0, 'On has aura - force despawn');