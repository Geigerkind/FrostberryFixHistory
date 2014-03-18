-- disable Parasite Evening Achievement

DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 15650);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`)
VALUES (4, 15650, 0, 0, 0, 'disable Parasite Evening Achievement');