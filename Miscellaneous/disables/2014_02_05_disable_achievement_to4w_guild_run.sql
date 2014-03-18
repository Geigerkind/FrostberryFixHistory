-- disable TO4W guild run Achievement

DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 14012);
DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 14146);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(4, 14012, 0, 0, 0, 'disable criteria alakir'),
(4, 14146, 0, 0, 0, 'disable criteria conclave of wind');