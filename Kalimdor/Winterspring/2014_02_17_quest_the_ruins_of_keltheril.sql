-- quest The Ruins of Kel'Theril (ID: 28479)

UPDATE `creature_addon` SET `auras` = 91218 WHERE `guid` = 114478;
UPDATE `creature_template_addon` SET `auras` = 91218 WHERE `entry` IN (48660, 48659);
