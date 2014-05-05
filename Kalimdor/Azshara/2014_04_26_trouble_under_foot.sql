-- Trouble Under Foot (ID: 14226)
-- Delete Trash
DELETE FROM `creature` WHERE `id` = 35628;

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI'  WHERE `entry` IN (6200, 6201, 6202, 35187);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 35187;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 6200 AND `id` IN (1,2);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 6201 AND `id` IN (2,3);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 6202 AND `id` IN (11,12);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35187, 0, 0, 0, 19, 100, 0, 14226, 0, 0, 0, 85, 67842, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Questaccept invoker cast 67842'),
(6200, 0, 1, 1, 8, 100, 1, 67794, 64, 1, 1, 12, 35628, 1, 80000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit summon 35628'),
(6200, 0, 2, 0, 8, 100, 1, 67794, 64, 1, 1, 41, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit despawn'),
(6201, 0, 2, 1, 8, 100, 1, 67794, 64, 1, 1, 12, 35628, 1, 80000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit summon 35628'),
(6201, 0, 3, 0, 8, 100, 1, 67794, 64, 1, 1, 41, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit despawn'),
(6202, 0, 11, 1, 8, 100, 1, 67794, 64, 1, 1, 12, 35628, 1, 80000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit summon 35628'),
(6202, 0, 12, 0, 8, 100, 1, 67794, 64, 1, 1, 41, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit despawn');