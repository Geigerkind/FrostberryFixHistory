-- Elemental Bonds
-- Npcs
-- Trash
DELETE FROM `creature` WHERE `guid` = 133148;

-- NPC missing
-- Aggra in Deepholm in front of the earth thrall
replace into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values
('53750','0','0','0','0','0','35825','0','0','0','Aggra','','','12943','85','85','3','0','2167','2167','3','1','1.14286','1','1.14286','1','0','619.2','835.2','0','976','1','2000','2000','2','32768','2048','0','0','0','0','0','0','466.8','654','156','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','1','1','0','0','0','0','0','0','0','0','1','53738','0','0','');

UPDATE `creature` SET `id` = 53750 WHERE `guid` = 243492;

-- Spawn Aggra in the Molten Front
DELETE FROM `creature` WHERE `id` = 54014;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('54014','861','5733','5749','1','256','0','54014','1449.93','342.96','51.5179','3.67511','300','0','0','77490','4412','0','0','0','0');

-- Spawn Aggra in the Molten Front 
DELETE FROM `creature` WHERE `id` = 53925;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('53925','861','5733','5749','1','512','0','53925','1494','317.385','61.7899','4.00297','300','0','0','77490','4412','0','0','0','0');

-- Spawn Thrall in the Molten Front
DELETE FROM `creature` WHERE `id` = 53959;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('53959','861','5733','5749','1','512','0','0','1476.04','301.665','41.9','0.662396','300','0','0','103070400','1375500','0','0','0','0');

-- Spawn Seeds of Fury and Flame of Fury in the Molten Front
DELETE FROM `creature` WHERE `id` IN (53928, 53929);
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('53928','861','5733','5749','1','512','0','0','1494.7','284.77','62.0828','3.50563','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1485.07','271.53','62.0402','4.11824','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1479.31','255.216','64.6685','4.52664','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1492.18','240.167','68.7987','5.3788','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1496.47','251.039','65.579','1.19655','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1495.6','266.997','63.1178','1.40468','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1508.34','261.22','63.3249','5.82648','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1524.5','263.805','63.5274','0.155902','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1517.58','280.57','63.5741','2.96763','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1505.94','272.794','63.3099','3.73339','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1528.52','292.434','64.5744','0.493623','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1540.53','288.376','69.4254','5.77936','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1528.13','307.21','64.6048','2.3668','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1512.81','292.747','63.3093','3.88262','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1505.75','307.45','62.9416','2.02122','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1517.8','319.753','62.5194','0.599653','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1531','331.235','62.0338','0.72139','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1535.36','348.14','64.0721','1.31829','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1539.32','366.259','64.6645','1.46359','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1525.15','371.474','64.3279','2.98726','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1506.54','362.386','63.0942','3.78444','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1488.49','344.201','63.0237','4.00043','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1499.01','334.964','63.0231','5.52803','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1512.93','345.565','62.0077','0.650703','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1509.53','382.091','62.9901','1.80524','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1492.46','379.115','61.4727','3.33284','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1479.7','365.491','62.9803','4.12216','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1474.49','384.19','64.2672','2.0762','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1486.71','397.844','61.5544','1.65601','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1501.05','405.213','62.9336','0.387594','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1516.77','397.525','63.0601','5.83826','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1511.1','417.744','63.4207','1.84843','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1504.85','437.78','65.8787','1.81309','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1526.98','420.319','64.817','6.25844','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1554.75','331.168','61.647','6.09743','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1561.73','352.744','62.4052','1.1023','300','0','0','77490','0','0','0','0','0'),
('53928','861','5733','5749','1','512','0','0','1486.93','322.848','63.0308','2.36286','300','0','0','77490','0','0','0','0','0'),
('53929','861','5733','5749','1','512','0','0','1540.85','273.62','71.9823','5.38696','300','0','0','542430','0','0','0','0','0'),
('53929','861','5733','5749','1','512','0','0','1484.4','245.12','69.1901','1.11083','300','0','0','542430','0','0','0','0','0'),
('53929','861','5733','5749','1','512','0','0','1480.85','410.689','66.506','5.52983','300','0','0','542430','0','0','0','0','0'),
('53929','861','5733','5749','1','512','0','0','1547.69','359.973','68.7316','4.04702','300','0','0','542430','0','0','0','0','0');

-- Spawn Thrall in the Abyssal Depths
UPDATE `creature_template` SET `InhabitType` = 4, `scale` = 2.5 WHERE `entry` = 53657;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
(53657 ,99628);

DELETE FROM `creature` WHERE `id` = 53657;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('53657','0','5145','5047','1','2','0','53657','-5752.14','5349.16','-1352.96','2.7','300','0','0','103070400','1375500','0','0','0','0');

-- Change position of Aggra
UPDATE `creature` SET `position_x` = -5841.2, `position_y` = 5385.12, `position_z` = -1212.5, `orientation` = 5.8 WHERE `id` = 53652;

-- Totems in the Molten Front
DELETE FROM `creature_template` WHERE `entry` IN (55079, 55080, 55081, 55082);
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values 
(55079,'0','0','0','0','0','30758','0','0','0','Fire Totem','','','0','1','1','0','0','58','58','0','1','1','1','1','1','0','4','5.175','0','16','0.75','2000','2000','1','33555204','2048','0','0','0','0','0','0','2.2','3.825','11','11','1048576','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','0'),
(55080,'0','0','0','0','0','30756','0','0','0','Air Totem','','','0','1','1','0','0','58','58','0','1','1','1','1','1','0','4','5.175','0','16','0.75','2000','2000','1','33555204','2048','0','0','0','0','0','0','2.2','3.825','11','11','1048576','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','0'),
(55081,'0','0','0','0','0','30759','0','0','0','Water Totem','','','0','1','1','0','0','58','58','0','1','1','1','1','1','0','4','5.175','0','16','0.75','2000','2000','1','33555204','2048','0','0','0','0','0','0','2.2','3.825','11','11','1048576','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','0'),
(55082,'0','0','0','0','0','30757','0','0','0','Earth Totem','','','0','1','1','0','0','58','58','0','1','1','1','1','1','0','4','5.175','0','16','0.75','2000','2000','1','33555204','2048','0','0','0','0','0','0','2.2','3.825','11','11','1048576','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','0');

UPDATE `creature_template` SET `scale` = 3, `unit_flags` = 33686276 WHERE `entry` IN (55079, 55080, 55081, 55082);

DELETE FROM `creature` WHERE `id` IN (55079, 55080, 55081, 55082);
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('55079','861','5733','5749','1','512','0','0','1500.25','333.282','65.9184','4.19612','300','0','0','42','0','0','0','0','0'),
('55080','861','5733','5749','1','512','0','0','1519.34','414.001','68.2724','4.29812','300','0','0','42','0','0','0','0','0'),
('55081','861','5733','5749','1','512','0','0','1557.04','337.648','61.7714','3.18463','300','0','0','42','0','0','0','0','0'),
('55082','861','5733','5749','1','512','0','0','1497.54','251.664','66.6272','1.43494','300','0','0','42','0','0','0','0','0');

-- Portal in the Molten Front
DELETE FROM `gameobject` WHERE `id` = 209038;
insert into `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('209038','861','5733','5749','1','2048','1487.87','324.908','63.0165','5.83803','0','0','0.220744','-0.975332','300','0','1');

-- Secound Thrall in the Molten Front
DELETE FROM `creature` WHERE `id` = 53960;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('53960','861','5733','5749','1','2048','0','0','1494.47','311.794','60.945','1.53041','300','0','0','103070400','1375500','0','0','0','0');

-- Aggra for phase 2048
DELETE FROM `creature_template` WHERE `entry` = 55083;
insert into `creature_template` (`entry`, `modelid1`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `movementId`, `RegenHealth`, `equipment_id`, `flags_extra`, `ScriptName`) values
(55083,'35825','Aggra',NULL,'','12950','85','85','3','0','2167','2167','3','1','1.14286','1','1.14286','1','0','619.2','835.2','0','976','1','2000','2000','2','32768','2048','0','0','0','0','0','0','466.8','654','156','7','0','0','0','0','0','SmartAI','0','3','1','1','1','1','1','0','1','53925','0','');

DELETE FROM `creature` WHERE `id` = 55083;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
(55083,'861','5733','5749','1','2048','0','53925','1494','317.385','61.7899','4.45297','300','0','0','77490','4412','0','0','0','0');

-- NPC may not move (General)
UPDATE `creature_template` SET `unit_flags` = 4, `MovementType` = 0 WHERE `entry` IN (53536, 53987);
UPDATE `creature` SET `MovementType` = 0 WHERE `id` IN (53536, 53987);

-- Totems
UPDATE `creature_template` SET `unit_flags` = 33555204, `MovementType` = 0 WHERE `entry` IN (44664, 44665, 44659, 44663);
UPDATE `creature` SET `MovementType` = 0 WHERE `id` IN (44664, 44665, 44659, 44663); 

-- Thrall floating in the air
UPDATE `creature` SET `position_x` = -11255.7, `position_y` = 310.85 WHERE `id` = 53518;

-- Thrall beeing prisoned in earth(?)
UPDATE `creature_template` SET `unit_flags` = 33540, `MovementType` = 0 WHERE `entry` = 53736;
UPDATE `creature` SET `position_z` = 24, `MovementType` = 0 WHERE `id` = 53736;