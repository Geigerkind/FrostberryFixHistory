-- disable Parasite Evening Achievement

DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 16013);
DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 16014);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(4, 16013, 0, 0, 0, 'disable criteria for aberrant behavior'),
(4, 16014, 0, 0, 0, 'disable criteria for aberrant behavior');