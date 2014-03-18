-- quest firestart (ID: 14196)
-- stack buff 80627
-- dummy spell 54694
-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (35384, 35386);
UPDATE `creature_template` SET `unit_flags` = 33554432, `modelid1` = 31882, `modelid2` = 0 WHERE `entry` = 35386;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35384, 35386);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(35384, 0, 0, 6, 100, 1, 0, 0, 0, 0, 11, 54694, 2, 11, 35386, 30, 'On death cast dummy spell on wispy vortex'),
(35386, 0, 0, 8, 100, 0, 54694, 1, 1, 1, 11, 80627, 2, 1, 0, 0, 'On spell hit cast spell self'),
(35386, 0, 1, 23, 100, 1, 80627, 7, 1, 1, 33, 35392, 0, 18, 30, 0, 'On having 7 stack - give questcredit - player near');