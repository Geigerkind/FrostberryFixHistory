DELETE FROM `creature_questrelation` WHERE `quest` IN (24615, 24609, 24597);
INSERT INTO `creature_questrelation` VALUES
(38043, 24615), -- silvermoon
(38041, 24609), -- ironforge
(37887, 24597); -- stormwind

UPDATE `quest_template` SET `NextQuestId` = 28934, `NextQuestIdChain` = 28934 WHERE `id` = 24657;
UPDATE `quest_template` SET `PrevQuestId` = 24657 WHERE `id` = 28934;


DELETE FROM `conditions` WHERE `SourceEntry` IN (44731, 22206) AND `ConditionTypeOrReference` = 12;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES
-- normals
(1, 42333, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 39679, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 40319, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
-- heroics
(1, 49624, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 39680, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 48784, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
-- Lord Godfrey normal
(1, 46964, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 46964, 22206, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
-- Lord Godfrey heroic
(1, 49712, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 49712, 22206, 12, 8, 'Rose Bouquet only drops on eventstate = active');

DELETE FROM `creature_loot_template` WHERE `item` IN (44731, 22206);
INSERT INTO `creature_loot_template` VALUES
-- normals
(42333, 44731, 25, 1, 0, 1, 1),
(39679, 44731, 25, 1, 0, 1, 1),
(40319, 44731, 25, 1, 0, 1, 1),
-- heroics
(49624, 44731, 100, 1, 0, 1, 1),
(39680, 44731, 100, 1, 0, 1, 1),
(48784, 44731, 100, 1, 0, 1, 1),
-- Lord Godfrey normal
(46964, 44731, 25, 1, 1, 1, 1),
(46964, 22206, 25, 1, 1, 1, 1),
-- Lord Godfrey heroic
(49712, 44731, 100, 1, 1, 1, 1),
(49712, 22206, 100, 1, 1, 1, 1);
