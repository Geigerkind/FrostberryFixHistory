-- questchain issue hyjal #2

DELETE FROM `creature_questrelation` WHERE `id` = 39442 AND `quest` IN (25224, 25223);
DELETE FROM `creature_questrelation` WHERE `id` = 39413 AND `quest` IN (25499, 25299, 25509, 25309, 25311);
DELETE FROM `creature_questrelation` WHERE `id` = 40578 AND `quest` IN (25523, 25544, 25560, 25832);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39442, 25224),
(39442, 25223),
(39413, 25499),
(39413, 25299),
(39413, 25509),
(39413, 25309),
(39413, 25311),
(40578, 25523),
(40578, 25544),
(40578, 25560),
(40578, 25832);

DELETE FROM `creature_involvedrelation` WHERE `id` = 33280;
DELETE FROM `creature_involvedrelation` WHERE `id` = 39413 AND `quest` IN (25499, 25299, 25509, 25309, 25311, 25310, 25601);
DELETE FROM `creature_involvedrelation` WHERE `id` = 40578 AND `quest` IN (25523, 25544, 25560);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(39413, 25310), 
(39413, 25499),
(39413, 25299),
(39413, 25509),
(39413, 25309),
(39413, 25601),
(39413, 25311),
(40578, 25523),
(40578, 25544),
(40578, 25560);

UPDATE `creature_involvedrelation` SET `id` = 40578 WHERE `quest` = 25810;