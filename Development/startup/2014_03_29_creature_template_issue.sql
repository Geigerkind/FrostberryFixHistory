UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (0, 71002, 71001, 71000);
UPDATE `creature_template` SET  `speed_walk` = 1, `speed_run` = 1 WHERE `entry` IN (71002, 36838, 36839, 71001, 50004, 71000);
DELETE FROM `creature_addon` WHERE `guid` IN (40567, 21855, 6716, 21866);