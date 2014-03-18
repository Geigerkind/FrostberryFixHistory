-- quest disclosure (ID: 12710)
-- creature / gameobject
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 28503;
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI', `type` = 10 WHERE `entry` = 190949;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28503, 190949);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `target_type`,`target_param1`,`target_param2`,`target_x`,`target_y`,`target_z`,`target_o`, `comment`) VALUES 
(28503, 0, 0, 19, 100, 0, 12710, 0, 0, 0, 62, 571, 0, 0, 7, 0, 0, 6254.1, -1964.2, 484.8, 0.6, 'on quest accept - teleport'),
(190949, 1, 0, 64, 100, 0, 0, 0, 0, 0, 33, 28929, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'on gossip hello - give questcredit');