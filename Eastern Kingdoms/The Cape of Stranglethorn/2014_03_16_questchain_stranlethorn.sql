-- questchain cape of stranglethorn 
DELETE FROM `creature_questrelation` WHERE `id` = 43095 AND `quest` = 26495;
INSERT INTO `creature_questrelation` VALUES 
(43095, 26495);