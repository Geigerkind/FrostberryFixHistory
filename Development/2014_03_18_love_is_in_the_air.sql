-- Love is in the Air (ID: 8)
-- guidrange 1000000-1010000
-- Horde
-- Orgrimmar
-- creatures / gameobject correction
DELETE FROM `gameobject` WHERE `guid` = 42843;
UPDATE `creature` SET `position_x` = 1593.34, `position_y` = -4429.06, `position_z` = 15.52, `orientation` = 1.31 WHERE `guid` = 127011;
UPDATE `creature` SET `position_x` = 1591.84, `position_y` = -4429.29, `position_z` = 15.58, `orientation` = 1.31 WHERE `guid` = 127025;
UPDATE `creature` SET `position_x` = 1780.85, `position_y` = -4508.72, `position_z` = 27.74, `orientation` = 3.45 WHERE `guid` = 127026;
UPDATE `creature` SET `position_x` = 1596.01, `position_y` = -4427.89, `position_z` = 16.3, `orientation` = 1.57 WHERE `guid` = 127014;
UPDATE `creature` SET `position_x` = 1614, `position_y` = -4390.6, `position_z` = 20.9, `orientation` = 4.2 WHERE `guid` = 127024;
UPDATE `creature` SET `position_x` = 1392.5, `position_y` = -4481.8, `position_z` = 31.3, `orientation` = 2.3 WHERE `guid` = 99823;
UPDATE `creature` SET `position_x` = 1395, `position_y` = -4490.9, `position_z` = 31.7, `orientation` = 4 WHERE `guid` = 99825;
UPDATE `creature` SET `position_x` = 1828.92, `position_y` = -4404.72, `position_z` = 103.73, `orientation` = 1.7 WHERE `guid` = 99822;

DELETE FROM `creature` WHERE `guid` IN (1000000, 1000001);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(1000000, '40438','1','1637','5170','1','1','0','0','1570.59','-4385.1','16.3731','4.46702','300','0','0','2215','0','0','0','0','0'),
(1000001, '37671','1','14','4982','1','1','0','37671','1390.32','-4485.18','31.4379','2.58904','300','0','0','12600','0','0','0','0','0');

DELETE FROM `game_event_creature` WHERE `guid` IN (1000000, 1000001);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(8, 1000000),
(8, 1000001);

-- quests
DELETE FROM `creature_questrelation` WHERE `id` IN (37172, 38328) AND `quest` IN (24536, 24541, 24850, 24576, 24851);
INSERT INTO `creature_questrelation` VALUES
(37172, 24536),
(37172, 24541),
(37172, 24850),
(37172, 24576),
(38328, 24851);

DELETE FROM `creature_involvedrelation` WHERE `id` IN (37172, 38328) AND `quest` IN (24536, 24541, 24576, 24850, 24851);
INSERT INTO `creature_involvedrelation` VALUES
(37172, 24536),
(37172, 24541),
(37172, 24576),
(38328, 24850),
(38328, 24851);

UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `id` = 24536;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `id` = 24805;

-- conditions
