-- Elemental Bonds
-- Questchain
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestId` = 29326, `Method` = 2, `PrevQuestId` = 29201 WHERE `id` = 29439;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestId` = 29326, `Method` = 2, `PrevQuestId` = 29201 WHERE `id` = 29440;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestId` = 29335 WHERE `id` = 29326;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestId` = 29327 WHERE `id` = 29335;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestId` = 29336 WHERE `id` = 29327;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestIdChain` = 0, `RewardSpellCast` = 0 WHERE `id` = 29336;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestId` = 29337 WHERE `id` = 29328;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestIdChain` = 0 WHERE `id` = 29337;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `Method` = 2, `NextQuestId` = 29338 WHERE `id` = 29329;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestId` = 29330 WHERE `id` = 29338;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `NextQuestId` = 29331 WHERE `id` = 29330;
UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0, `RewardSpellCast` = 0 WHERE `id` = 29331;

DELETE FROM `creature_questrelation` WHERE `quest` = 29331;
REPLACE INTO `creature_involvedrelation` VALUES
(53750, 29329);

REPLACE INTO `creature_questrelation` VALUES
(53750, 29338),
(54014, 29330),
(55083, 29331);

UPDATE `quest_template` SET `Flags` = 8, `SpecialFlags` = 0 WHERE `id` = 29338;