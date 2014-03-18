-- disable keeping it in the familiy Achievement

DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 15671);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`)
VALUES (4, 15671, 0, 0, 0, 'disable keeping it in the family Achievement');