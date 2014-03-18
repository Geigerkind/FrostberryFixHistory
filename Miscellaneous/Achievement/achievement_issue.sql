-- achievement issue cata
-- Allianz 1,3,4,7,11,22
-- Horde 2,5,6,8,9,10

DELETE FROM `character_achievement` WHERE `guid` IN (SELECT `guid` FROM `characters` WHERE `race` IN (2,5,6,8,9,10)) AND `achievement` IN (SELECT `id` FROM `dbc_achievement` WHERE `factionFlag` = 1);
DELETE FROM `character_achievement` WHERE `guid` IN (SELECT `guid` FROM `characters` WHERE `race` IN (1,3,4,7,11,22)) AND `achievement` IN (SELECT `id` FROM `dbc_achievement` WHERE `factionFlag` = 0);