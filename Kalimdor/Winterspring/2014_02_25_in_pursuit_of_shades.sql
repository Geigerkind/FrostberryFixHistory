-- quest In pursuit of Shades (ID: 28537)

DELETE FROM `creature_involvedrelation` WHERE `id` = 10920 AND `quest` = 28537;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(10920, 28537);