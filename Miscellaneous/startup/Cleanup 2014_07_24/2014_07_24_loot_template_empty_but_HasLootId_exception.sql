-- Table 'X_loot_template' entry 60583 (X entry) does not exist but used as loot id in DB.

UPDATE `creature_template` SET `lootid` = 0 WHERE `lootid` NOT IN (SELECT `entry` FROM `creature_loot_template`) AND `lootid` != 0;
UPDATE `gameobject_template` SET `data1` = 0 WHERE `type` = 3 AND `data1` NOT IN (SELECT `entry` FROM `gameobject_loot_template`) AND `data1` != 0;