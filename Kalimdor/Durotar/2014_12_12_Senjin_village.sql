-- Cleanup on isle E (ID: 25073)
DELETE FROM `creature_involvedrelation` WHERE `id` = 3188 AND `quest` = 25073;
INSERT INTO `creature_involvedrelation` VALUES
(3188, 25073);