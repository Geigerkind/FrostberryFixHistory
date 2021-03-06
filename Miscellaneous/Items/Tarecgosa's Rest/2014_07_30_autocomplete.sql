-- Horde NPC: 52382
-- Alliance NPC: 52408

UPDATE `quest_template` SET `method` = 0 WHERE `id` IN (29193, 29194, 29225, 29234, 29239, 29240, 29269, 29312, 29309);
UPDATE `quest_template` SET `method` = 2, `SourceItemId` = 69646 WHERE `id` = 29234;
UPDATE `quest_template` SET `method` = 2, `RequiredItemId1` = 71084, `RequiredItemCount1` = 1, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `id` = 29285;


REPLACE INTO `creature_questrelation` VALUES
(52382, 29193),
(52408, 29193),
(52382, 29194),
(52408, 29194),
(52382, 29225),
(52408, 29225),
(52382, 29234),
(52408, 29234),
(52382, 29239),
(52408, 29239),
(52382, 29240),
(52408, 29240),
(52382, 29269),
(52408, 29269),
(52382, 29270),
(52408, 29270),
(52382, 29285),
(52408, 29285),
(52382, 29308),
(52408, 29307),
(52382, 29309),
(52408, 29312);

REPLACE INTO `creature_involvedrelation` VALUES
(52382, 29193),
(52408, 29193),
(52382, 29194),
(52408, 29194),
(52382, 29225),
(52408, 29225),
(52382, 29234),
(52408, 29234),
(52382, 29239),
(52408, 29239),
(52382, 29240),
(52408, 29240),
(52382, 29269),
(52408, 29269),
(52382, 29270),
(52408, 29270),
(52382, 29285),
(52408, 29285),
(52382, 29308),
(52408, 29307),
(52382, 29309),
(52408, 29312);