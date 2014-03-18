-- quest Gar'gol Gotta Go (ID: 25328)
-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` = 39640 AND `id` IN (3,4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39640, 0, 3, 19, 100, 0, 25332, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On quest accept - kill self'),
(39640, 0, 4, 1, 100, 0, 1, 1, 1, 1, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC - vis on');

-- creature
UPDATE `creature` SET `spawntimesecs` = 60 WHERE `id` = 39640;