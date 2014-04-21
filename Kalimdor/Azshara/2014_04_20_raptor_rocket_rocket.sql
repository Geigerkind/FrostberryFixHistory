-- Raptor Raptor Rocket (ID: 14422)
-- Dummy Target Spell: 54694/56685/88529
-- creature
UPDATE `creature_template` SET `unit_flags` = 4, `AIName` = 'SmartAI' WHERE `entry` = 36509;

-- sai
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI', `type` = 10 WHERE `entry` = 196486;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (196486, 36509);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(196486, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 11, 54694, 3, 0, 0, 0, 0, 11, 36509, 25, 0, 0, 0, 0, 'On gossip hello cast dummy spell on raptor'),
(36509, 0, 0, 1, 8, 100, 1, 54694, 1, 1, 1, 33, 36534, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On spellhit give questcredit'),
(36509, 0, 1, 0, 61, 100, 1, 0, 0, 0, 0, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event - despawn');
