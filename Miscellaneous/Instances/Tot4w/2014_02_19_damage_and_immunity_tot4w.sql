-- tot4w damage and immunity
-- Conclave of Winds
-- Anshal / Nezir
UPDATE `creature_template` SET `mindmg` = 30000, `maxdmg` = 40000, dmg_multiplier = 3, unit_flags = 4, `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mechanic_immune_mask` = 650854271 WHERE `entry` IN (50113, 50108);
UPDATE `creature_template` SET `mindmg` = 30000, `maxdmg` = 40000, dmg_multiplier = 4, unit_flags = 4, `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mechanic_immune_mask` = 650854271 WHERE `entry` IN (50123, 50118);
-- Al'Akir
UPDATE `creature_template` SET `mindmg` = 30000, `maxdmg` = 40000, dmg_multiplier = 3.5, unit_flags = 4, `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7) WHERE `entry` = 50217;
UPDATE `creature_template` SET `mindmg` = 30000, `maxdmg` = 40000, dmg_multiplier = 4.5, unit_flags = 4, `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7) WHERE `entry` = 50231;

