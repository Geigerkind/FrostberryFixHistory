-- quest warchiefs command: The cape of stranglethorn

DELETE FROM `creature_involvedrelation` WHERE (`id` = 43095 AND `quest` = 28704);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (43095, 28704);