-- Orc starting zone
-- Chain
UPDATE `quest_template` SET `NextQuestId` = 25126 WHERE `id` = 25152;
UPDATE `quest_template` SET `NextQuestId` = 25172 WHERE `id` = 25126;
UPDATE `quest_template` SET `PrevQuestId` = 25126 WHERE `id` = 25172;
-- Class specific
UPDATE `quest_template` SET `NextQuestId` = 25149 WHERE `id` = 25138; -- Mage
UPDATE `quest_template` SET `NextQuestId` = 25141 WHERE `id` = 3088; -- Rouge
UPDATE `quest_template` SET `NextQuestId` = 25147 WHERE `id` = 2383; -- Warrior
UPDATE `quest_template` SET `NextQuestId` = 25139 WHERE `id` = 3087; -- Hunter
UPDATE `quest_template` SET `NextQuestId` = 25143 WHERE `id` = 3089; -- Shamen
UPDATE `quest_template` SET `NextQuestId` = 25145 WHERE `id` = 3090; -- Warlock

-- Scorpid Worker Tail
DELETE FROM `creature_loot_template` WHERE `item` = 4862 AND `entry` != 3124;

-- Zureetha Fargaze
REPLACE INTO `creature_questrelation` VALUES
(3145, 25131),
(3145, 25132);