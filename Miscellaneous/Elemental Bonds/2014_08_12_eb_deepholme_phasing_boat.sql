DELETE FROM `phase_definitions` WHERE `zoneId` = 5042;
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `flags`, `comment`) VALUES
(5042, 1, 3, 0, 1, 719, 0, 'Deepholm Phase 2 + 1 (Elemental Bonds) // Hackfix transport phasing');