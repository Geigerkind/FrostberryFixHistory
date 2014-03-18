-- the hatchery must burn (ID: 25810)

DELETE FROM `creature_involvedrelation` WHERE `id` = 40578 AND `quest` = 25810;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(40578, 25810);
