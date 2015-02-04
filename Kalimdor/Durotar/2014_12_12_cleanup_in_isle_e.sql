-- Cleanup on isle E (ID: 26951)
DELETE FROM `creature_involvedrelation` WHERE `id` = 3188 AND `quest` = 26951;
INSERT INTO `creature_involvedrelation` VALUES
(3188, 26951);