-- disable elementary Achievement

DELETE FROM `disables` WHERE (`sourceType` = 4 AND `entry` = 15471);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`)
VALUES (4, 15471, 0, 0, 0, 'disable elementary Achievement');