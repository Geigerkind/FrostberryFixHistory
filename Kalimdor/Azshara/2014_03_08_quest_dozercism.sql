-- quest dozercism (ID: 14423)
-- Cleaning up
DELETE FROM `creature` WHERE `id` = 36552;

-- adding sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36552, 35526);

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36552, 35526);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(35526, 0, 0, 8, 100, 1, 68007, 1, 1, 1, 33, 35526, 0, 18, 100, 0, 'On gossip select - target player - give questcredit');