-- quest fix mixmaster jasper

DELETE FROM `creature_questrelation` WHERE `id` = 43097 AND `quest` = 26494;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(43097, 26494);