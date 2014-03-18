-- quest Cleansing of Drak'Tharon (ID: 30120)

DELETE FROM `gameobject` WHERE `id` = 300188 AND `map` = 600 AND `zone` = 4196;
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(300188,600,4196,4196,2,1,-236.7,-614.5,116,1.50658,0,0,0.684042,0.729443,300,0,1);
