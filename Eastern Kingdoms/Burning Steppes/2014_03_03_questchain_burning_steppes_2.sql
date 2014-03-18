-- questchain burning steppes

DELETE FROM `creature_template_addon` WHERE `entry` = 48569;

DELETE FROM `creature_questrelation` WHERE `id` = 48569 AND `quest` IN (28449, 28453);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(48569, 28449),
(48569, 28453);