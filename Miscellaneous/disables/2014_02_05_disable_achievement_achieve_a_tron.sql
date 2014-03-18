-- disable Achieve-a-tron Achievement

DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 15651);
DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 15652);
DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 15653);
DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 15654);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(4, 15651, 0, 0, 0, 'disable criteria no player hit by static shock'),
(4, 15652, 0, 0, 0, 'disable criteria no player hit by poison bomb'),
(4, 15653, 0, 0, 0, 'disable criteria no player hit by arcane annihilator'),
(4, 15654, 0, 0, 0, 'disable criteria no more than one player hit by each flamethrower');

