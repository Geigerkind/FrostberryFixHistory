-- desolace terrain 
-- creature 77452
UPDATE `creature_template_addon` SET `auras` = 17327 WHERE `entry` = 35384;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (41356);
UPDATE `creature` SET `position_x` = -97.72, `position_y` = 785.1, `position_z` = 133.62, `orientation` = 5.22 WHERE `guid` = 84397;

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4674, 4672) AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(4674, 0, 1, 1, 100, 1, 1, 1, 1, 1, 11,77452, 2, 11, 41356, 30, 'On OOC - cast spell - trigger'),
(4672, 0, 1, 1, 100, 1, 1, 1, 1, 1, 11,77452, 2, 11, 41355, 30, 'On OOC - cast spell - trigger'),
(4672, 0, 2, 1, 100, 1, 1, 1, 1, 1, 11,77452, 2, 11, 41353, 30, 'On OOC - cast spell - trigger');
