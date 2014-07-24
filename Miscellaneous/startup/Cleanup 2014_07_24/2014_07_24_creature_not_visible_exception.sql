-- creature phase = 0 => not visible exception

UPDATE `creature` SET `phasemask` = 1 WHERE `phasemask` = 0;