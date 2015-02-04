-- Zonozz Trash may not be moveable
UPDATE `creature_template` SET `unit_flags` = 32772 WHERE `entry` IN (57875, 57876, 57877, 57878);

-- Trash Autoattack damage
UPDATE `creature_template` SET `mindmg` = 15000, `maxdmg` = 17000, dmg_multiplier = 4.5, `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7) WHERE `entry` IN (57158, 57292); -- Earthen Destroyer
UPDATE `creature_template` SET `mindmg` = 15000, `maxdmg` = 17000, dmg_multiplier = 4.5, `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7) WHERE `entry` IN (57160, 57294); -- Ancient Waterlord
UPDATE `creature_template` SET `mindmg` = 15000, `maxdmg` = 17000, dmg_multiplier = 3.5, `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7) WHERE `entry` IN (57386, 57428, 57387, 57429, 57382, 57426, 57333, 57425, 57388, 57430, 57384, 57427); -- Unsleeping Globules