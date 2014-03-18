-- questchain progression issue mount hyjal

UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `id` = 25664;
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceEntry` = 25663 AND `ConditionValue1` = 27874);
DELETE FROM `creature_questrelation` WHERE (`id` = 41005 AND `quest` = 25663);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(41005, 25663),
(41005, 25664);
