-- Latent Disease (ID: 26934)
-- Diseased Black Bear (ID: 1815)
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 1815;

-- If Bear dies, cast 5 times 83105 on himself
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 1815 AND `id` = 1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`)
VALUES (1815, 0, 1, 6, 100, 1, 11, 83105, 19, 1, 'If the bear dies, it casts 83105 on himself');

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 1815 AND `id` = 2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`)
VALUES (1815, 0, 2, 6, 100, 1, 11, 83105, 19, 1, 'If the bear dies, it casts 83105 on himself');

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 1815 AND `id` = 3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`)
VALUES (1815, 0, 3, 6, 100, 1, 11, 83105, 19, 1, 'If the bear dies, it casts 83105 on himself');

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 1815 AND `id` = 4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`)
VALUES (1815, 0, 4, 6, 100, 1, 11, 83105, 19, 1, 'If the bear dies, it casts 83105 on himself');

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 1815 AND `id` = 5);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`)
VALUES (1815, 0, 5, 6, 100, 1, 11, 83105, 19, 1, 'If the bear dies, it casts 83105 on himself');