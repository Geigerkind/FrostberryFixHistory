-- the bad dogs (ID: 27893 / 27892 / 27891)
-- gargals(47022) spells 87590
-- 87606
-- 87607
-- Jurrix(47024) spells 87591
-- 87593
-- 87596
-- Amakkar(47021) spells 87589
-- 87609
-- 87608

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI', `dynamicflags` = 8, `type_flags` = 8390896, `movementid` = 144 WHERE `entry` IN (47022, 47024, 47021);
UPDATE `creature_template` SET `spell1` = 87606, `spell2` = 87607 WHERE `entry` = 47022;
UPDATE `creature_template` SET `spell3` = 87593, `spell4` = 87596 WHERE `entry` = 47024;
UPDATE `creature_template` SET `spell5` = 87609, `spell6` = 87608 WHERE `entry` = 47021;

