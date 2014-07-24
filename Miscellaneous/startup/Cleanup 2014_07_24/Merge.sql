/* 
* 2014_07_24_creature_addon.sql 
*/ 
-- Creature (GUID: 108055) does not exist but has a record in `creature_addon`

DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`); 
 
/* 
* 2014_07_24_creature_movementtype_spawndist_exception.sql 
*/ 
-- Table `creature` have creature (GUID: 5886461 Entry: 52661) with `MovementType`=0 (idle) have `spawndist`<>0, set to 0.

UPDATE `creature` SET `spawndist` = 0 WHERE `MovementType` = 0 AND `spawndist` != 0; 
 
/* 
* 2014_07_24_creature_not_visible_exception.sql 
*/ 
-- creature phase = 0 => not visible exception

UPDATE `creature` SET `phasemask` = 1 WHERE `phasemask` = 0; 
 
/* 
* 2014_07_24_loot_template_empty_but_HasLootId_exception.sql 
*/ 
-- Table 'X_loot_template' entry 60583 (X entry) does not exist but used as loot id in DB.

UPDATE `creature_template` SET `lootid` = 0 WHERE `lootid` NOT IN (SELECT `entry` FROM `creature_loot_template`) AND `lootid` != 0;
UPDATE `gameobject_template` SET `data1` = 0 WHERE `type` = 3 AND `data1` NOT IN (SELECT `entry` FROM `gameobject_loot_template`) AND `data1` != 0; 
 
/* 
* Merge.sql 
*/ 
 
 
