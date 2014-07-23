-- Midsummer Festival (ID: 1)
-- Alliance and Horde Bonfire interact issue || OLD DISPLAY: 7734
UPDATE `gameobject_template` SET `data0` = 0, `displayid` = 6754 WHERE (`name` LIKE '%Bonfire%' AND `ScriptName` = 'go_midsummer_bonfire');
UPDATE `gameobject_template` SET `data0` = 0, `displayid` = 6754 WHERE `entry` IN (208184, 208188, 208187, 208094, 207983, 208090, 207986, 208093, 208089, 207985, 207982);

-- Trash Spawn
DELETE FROM `creature` WHERE `guid` IN (127615, 1407, 127487, 127577, 127578, 127498, 127506, 99906, 99905, 69232, 1388, 1425, 1426, 69242, 69241, 127630, 127590, 127593, 127631, 127589, 127636, 127529, 127456, 127584, 127579, 127592, 127588, 1401, 162319, 162297, 162364);
DELETE FROM `gameobject` WHERE `guid` IN (27113, 27108, 27097, 27119, 27117, 42883, 42856, 42847 ,42839, 42846, 42845, 42886, 27141, 42850, 42840, 42848, 42841, 42849, 42851, 96538, 27096, 27112, 27110, 96537, 42869);
DELETE FROM `game_event_creature` WHERE `guid` IN (127615, 1407, 127487, 127577, 127578, 127498, 127506, 99906, 99905, 69232, 1388, 1425, 1426, 69242, 69241, 127630, 127590, 127593, 127631, 127589, 127636, 127529, 127456, 127584, 127579, 127592, 127588, 1401, 162319, 162297, 162364);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (27113, 27108, 27097, 27119, 27117, 42883, 42856, 42847 ,42839, 42846, 42845, 42886, 27141, 42850, 42840, 42848, 42841, 42849, 42851, 96538, 27096, 27112, 27110, 96537, 42869);

DELETE FROM `gameobject_questrelation` WHERE `quest` IN (11745, 11749) AND `id` = 187564; -- Westfall Bonfire
DELETE FROM `gameobject_involvedrelation` WHERE `quest` IN (11745, 11749) AND `id` = 187564; -- Westfall Bonfire

DELETE FROM `game_event_creature_quest` WHERE `quest` = 11826 AND `id` = 25908; -- Hinterlands Double Quest Issue

DELETE w FROM `game_event_gameobject_quest` AS w JOIN `gameobject_questrelation` AS e ON w.`quest` = e.`quest` WHERE (w.`quest` = e.`quest`) AND `eventEntry` = 1;
-- spawn missing gmaeobjects
DELETE FROM `gameobject` WHERE (`guid` BETWEEN 1500000 AND 1500010);
insert into `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('1500000','208187','0','5144','4961','1','65535','-6110.62','4289.57','-349.053','3.65588','0','0','0.967121','-0.254318','300','0','1'),
('1500001','181355','0','5144','4961','1','65535','-6114.52','4289.67','-348.994','0.633675','0','0','0.311563','0.950225','300','0','1'),
('1500002','181355','0','5144','4961','1','65535','-6112.39','4286.13','-349.35','0.633675','0','0','0.311563','0.950225','300','0','1'),
-- Torch Tossing Requirement
('1500003','300068','1','1637','1637','1','65535','2061.73','-4310.34','96.4864','0.0648817','0','0','0.0324352','0.999474','300','0','1'),
('1500004','300068','1','1638','1640','1','65535','-1039.6','297.869','135.66','2.73696','0','0','0.979604','0.200938','300','0','1'),
('1500005','300068','0','85','153','1','65535','1829.17','219.935','60.6758','6.1993','0','0','0.0419307','-0.999121','300','0','1'),
('1500006','300068','530','3487','3487','1','65535','9805.11','-7231.37','26.0009','1.96714','0','0','0.832482','0.554052','300','0','1'),
('1500007','300068','0','1519','5390','1','65535','-8828.52','857.513','99.1015','5.99817','0','0','0.142027','-0.989863','300','0','1'),
('1500008','300068','1','1657','1657','1','65535','9992.07','2208.96','1328.1','6.16688','0','0','0.0581212','-0.99831','300','0','1'),
('1500009','300068','0','1537','5341','1','65535','-4690.13','-1225.98','501.66','0.118855','0','0','0.0593927','0.998235','300','0','1'),
('1500010','300068','530','3557','3557','1','65535','-3799.37','-11495.8','-134.777','2.41175','0','0','0.934152','0.356874','300','0','1');

DELETE FROM `game_event_gameobject` WHERE (`guid` BETWEEN 1500000 AND 1500010) AND `eventEntry` = 1;
INSERT INTO `game_event_gameobject` VALUES
(1, 1500000),
(1, 1500001),
(1, 1500002),
-- Torch Tossing Requirement
(1, 1500003),
(1, 1500004),
(1, 1500005),
(1, 1500006),
(1, 1500007),
(1, 1500008),
(1, 1500009),
(1, 1500010);

DELETE FROM `creature` WHERE (`guid` BETWEEN 5000000 AND 5000047);
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
-- Orgrimmar Spawn
('5000000','16818','1','1637','5429','1','65535','0','0','2042.96','-4336.3','95.4765','3.78123','300','0','0','3052','0','0','0','0','0'),
('5000001','26124','1','1637','1637','1','65535','0','0','2045.04','-4332.56','95.472','6.1365','300','0','0','6116','0','0','0','0','0'),
('5000002','26221','1','1637','1637','1','65535','0','26221','2048.31','-4327.57','95.4708','0.679656','300','0','0','5589','3155','0','0','0','0'),
('5000003','16781','1','1637','5429','1','65535','16433','0','2054.64','-4334.14','95.4736','1.81909','300','0','0','7984','0','0','0','0','0'),
('5000004','16781','1','1637','1637','1','65535','0','0','2053.72','-4329.86','95.472','4.88214','300','0','0','5914','0','0','0','0','0'),
('5000005','26113','1','1637','1637','1','65535','0','0','2054.8','-4316.09','95.5547','5.42815','300','0','0','6542','0','0','0','0','0'),
('5000006','16781','1','1637','1637','1','65535','0','0','2046.1','-4319.28','95.4709','2.21195','300','0','0','5914','0','0','0','0','0'),
('5000007','16781','1','1637','1637','1','65535','0','0','2043.74','-4316.06','95.471','5.31819','300','0','0','4142','0','0','0','0','0'),
-- Torch Tossing
('5000008','25535','0','85','153','1','65535','0','0','1840.14','222.714','62.0093','6.16002','3','0','0','4120','0','0','0','0','0'),
('5000009','25535','0','85','153','1','65535','0','0','1840.84','216.144','61.8718','6.23884','3','0','0','4120','0','0','0','0','0'),
('5000010','25535','1','1638','1640','1','65535','0','0','-1049.02','306.328','134.733','2.26675','3','0','0','4120','0','0','0','0','0'),
('5000011','25535','0','85','153','1','65535','0','0','1837.18','225.726','62.0404','6.16396','3','0','0','4120','0','0','0','0','0'),
('5000012','25535','1','1638','1640','1','65535','0','0','-1048.91','299.997','136.205','2.05411','3','0','0','4120','0','0','0','0','0'),
('5000013','25535','1','1638','1640','1','65535','0','0','-1054.5','298.661','135.113','2.46411','3','0','0','4120','0','0','0','0','0'),
('5000014','25535','1','1637','1637','1','65535','0','0','2074.32','-4315.73','99.9965','5.94028','3','0','0','4120','0','0','0','0','0'),
('5000015','25535','1','1637','1637','1','65535','0','0','2071.44','-4321.03','99.7032','5.6379','3','0','0','4120','0','0','0','0','0'),
('5000016','25535','1','1637','1637','1','65535','0','0','2076.29','-4310.19','100.204','6.09752','3','0','0','4120','0','0','0','0','0'),
('5000017','25535','0','85','153','1','65535','0','0','1838.3','218.913','63.0014','6.16395','3','0','0','4120','0','0','0','0','0'),
('5000018','25535','530','3487','3487','1','65535','0','0','9794.54','-7221.4','28.4559','1.83605','3','0','0','4120','0','0','0','0','0'),
('5000019','25535','1','1638','1640','1','65535','0','0','-1041.69','313.012','135.076','2.38601','3','0','0','4120','0','0','0','0','0'),
('5000020','25535','1','1638','1640','1','65535','0','0','-1042.66','306.519','136.251','2.09934','3','0','0','4120','0','0','0','0','0'),
('5000021','25535','530','3487','3487','1','65535','0','0','9803.92','-7219.71','27.9351','2.07108','3','0','0','4120','0','0','0','0','0'),
('5000022','25535','530','3487','3487','1','65535','0','0','9799.37','-7222.83','27.8141','2.17827','3','0','0','4120','0','0','0','0','0'),
('5000023','25535','530','3487','3487','1','65535','0','0','9799.25','-7217.49','29.0095','2.05538','3','0','0','4120','0','0','0','0','0'),
('5000024','25535','0','85','153','1','65535','0','0','1837.27','213.279','62.1428','6.22854','3','0','0','4120','0','0','0','0','0'),
('5000025','25535','1','1637','1637','1','65535','0','0','2073.83','-4299.16','98.278','0.598135','3','0','0','4120','0','0','0','0','0'),
('5000026','25535','1','1637','1637','1','65535','0','0','2075.67','-4305.11','99.3921','0.159765','3','0','0','4120','0','0','0','0','0'),
('5000027','25535','530','3487','3487','1','65535','0','0','9804.01','-7214.57','28.5442','2.08083','3','0','0','4120','0','0','0','0','0'),
('5000028','25535','0','1519','5390','1','65535','0','0','-8821.86','864.772','101.241','0.85485','3','0','0','4120','0','0','0','0','0'),
('5000029','25535','0','1519','5390','1','65535','0','0','-8817.59','861.048','100.856','0.623322','3','0','0','4120','0','0','0','0','0'),
('5000030','25535','0','1519','5390','1','65535','0','0','-8815.91','855.646','100.771','6.03455','3','0','0','4120','0','0','0','0','0'),
('5000031','25535','0','1519','5390','1','65535','0','0','-8818.86','850.12','100.813','5.37597','3','0','0','4120','0','0','0','0','0'),
('5000032','25535','0','1519','5390','1','65535','0','0','-8824.42','847.457','101.025','5.21773','3','0','0','4120','0','0','0','0','0'),
('5000033','25535','0','1537','5341','1','65535','0','0','-4685.98','-1218.9','503.457','1.51221','3','0','0','4120','0','0','0','0','0'),
('5000034','25535','0','1537','5341','1','65535','0','0','-4678.78','-1219.43','504.649','0.499044','3','0','0','4120','0','0','0','0','0'),
('5000035','25535','0','1537','5341','1','65535','0','0','-4675.45','-1224.59','503.456','0.0891927','3','0','0','4120','0','0','0','0','0'),
('5000036','25535','0','1537','5341','1','65535','0','0','-4677.35','-1229.71','503.454','6.10009','3','0','0','4120','0','0','0','0','0'),
('5000037','25535','0','1537','5341','1','65535','0','0','-4683.89','-1232.57','503.459','5.58085','3','0','0','4120','0','0','0','0','0'),
('5000038','25535','1','1657','1657','1','65535','0','0','10005.4','2218.01','1330.99','0.818325','3','0','0','4120','0','0','0','0','0'),
('5000039','25535','1','1657','1657','1','65535','0','0','10010.1','2214.13','1330.18','0.415006','3','0','0','4120','0','0','0','0','0'),
('5000040','25535','1','1657','1657','1','65535','0','0','10012.6','2208.14','1329.52','6.15758','3','0','0','4120','0','0','0','0','0'),
('5000041','25535','1','1657','1657','1','65535','0','0','10010.3','2202.99','1329.7','5.66438','3','0','0','4120','0','0','0','0','0'),
('5000042','25535','1','1657','1657','1','65535','0','0','10006.3','2198.84','1330','5.39254','3','0','0','4120','0','0','0','0','0'),
('5000043','25535','530','3557','3557','1','65535','0','0','-3810.73','-11496.8','-136.658','3.0067','3','0','0','4120','0','0','0','0','0'),
('5000044','25535','530','3557','3557','1','65535','0','0','-3812.21','-11492.4','-136.683','2.76949','3','0','0','4120','0','0','0','0','0'),
('5000045','25535','530','3557','3557','1','65535','0','0','-3807.71','-11491','-136.612','2.79218','3','0','0','4120','0','0','0','0','0'),
('5000046','25535','530','3557','3557','1','65535','0','0','-3808.63','-11486.4','-136.596','2.73284','3','0','0','4120','0','0','0','0','0'),
('5000047','25535','530','3557','3557','1','65535','0','0','-3804.35','-11485.6','-136.549','2.44355','3','0','0','4120','0','0','0','0','0');

DELETE FROM `game_event_creature` WHERE (`guid` BETWEEN 5000000 AND 5000047);
DELETE FROM `game_event_creature` WHERE `guid` IN (127443, 127634, 1199, 1412, 1197);
INSERT INTO `game_event_creature` VALUES
-- Orgrimmar Spawn
(1, 5000000),
(1, 5000001),
(1, 5000002),
(1, 5000003),
(1, 5000004),
(1, 5000005),
(1, 5000006),
(1, 5000007),
-- Torch Tossing
(1, 5000008),
(1, 5000009),
(1, 5000010),
(1, 5000011),
(1, 5000012),
(1, 5000013),
(1, 5000014),
(1, 5000015),
(1, 5000016),
(1, 5000017),
(1, 5000018),
(1, 5000019),
(1, 5000020),
(1, 5000021),
(1, 5000022),
(1, 5000023),
(1, 5000024),
(1, 5000025),
(1, 5000026),
(1, 5000027),
(1, 5000028),
(1, 5000029),
(1, 5000030),
(1, 5000031),
(1, 5000032),
(1, 5000033),
(1, 5000034),
(1, 5000035),
(1, 5000036),
(1, 5000037),
(1, 5000038),
(1, 5000039),
(1, 5000040),
(1, 5000041),
(1, 5000042),
(1, 5000043),
(1, 5000044),
(1, 5000045),
(1, 5000046),
(1, 5000047),
-- Darnassus
(1, 127634),
(1, 127443),
-- Ironforge 
(1, 1197),
(1, 1412),
(1, 1199);

-- correct spawn
-- Ashenvale (Horde)
UPDATE `creature` SET `position_x` = 2134.21, `position_y` = -1271.64, `position_z` = 96.0406, `orientation` = 5.695 WHERE `guid` = 127632;
UPDATE `creature` SET `position_x` = 2116.04, `position_y` = -1271.07, `position_z` = 98.5196, `orientation` = 0.444705 WHERE `guid` = 127540;
UPDATE `creature` SET `position_x` = 2120.44, `position_y` = -1268.45, `position_z` = 98.6721, `orientation` = 3.60201 WHERE `guid` = 127567;
UPDATE `creature` SET `position_x` = 2141.2, `position_y` = -1292.16, `position_z` = 94.5496, `orientation` = 1.20653 WHERE `guid` = 127541;
UPDATE `creature` SET `position_x` = 2143.47, `position_y` = -1289.13, `position_z` = 93.9731, `orientation` = 3.9515 WHERE `guid` = 127568;
UPDATE `creature` SET `position_x` = 2136.8, `position_y` = -1268.06, `position_z` = 95.71, `orientation` = 5.55 WHERE `guid` = 127510;
-- Swamp of Sarrows
UPDATE `creature` SET `position_x` = -9765.8, `position_y` = -3992.62, `position_z` = 23.61, `orientation` = 4.56 WHERE `guid` = 1295;
UPDATE `creature` SET `position_x` = -9767.66, `position_y` = -3993, `position_z` = 23.245, `orientation` = 4.56 WHERE `guid` = 1299;
UPDATE `creature` SET `position_x` = -9778.12, `position_y` = -3992, `position_z` = 21.25, `orientation` = 4.67 WHERE `guid` = 1228;
UPDATE `creature` SET `position_x` = -9778.2, `position_y` = -3997.4, `position_z` = 21.41, `orientation` = 1.5 WHERE `guid` = 1227;
UPDATE `creature` SET `position_x` = -9775.45, `position_y` = -4017.8, `position_z` = 21.65, `orientation` = 2.63 WHERE `guid` = 1226;
UPDATE `creature` SET `position_x` = -9778.67, `position_y` = -4015.5, `position_z` = 21.86, `orientation` = 5.76 WHERE `guid` = 1336;
-- Badlands
UPDATE `creature` SET `position_x` = -6614.2, `position_y` = -2617.25, `position_z` = 265.85, `orientation` = 4.6 WHERE `guid` = 262;
UPDATE `creature` SET `position_x` = -6612.3, `position_y` = -2617.43, `position_z` = 265.85, `orientation` = 4.6 WHERE `guid` = 1301;
UPDATE `creature` SET `position_x` = -6604.55, `position_y` = -2624.76, `position_z` = 265.92, `orientation` = 1.9 WHERE `guid` = 1328;
UPDATE `creature` SET `position_x` = -6605.76, `position_y` = -2620.41, `position_z` = 265.87, `orientation` = 5.42 WHERE `guid` = 1329;
UPDATE `creature` SET `position_x` = -6625, `position_y` = -2620.15, `position_z` = 265.33, `orientation` = 0.33 WHERE `guid` = 1347;
UPDATE `creature` SET `position_x` = -6621, `position_y` = -2618.22, `position_z` = 265.24, `orientation` = 3.8 WHERE `guid` = 69258;
-- Darkshore
UPDATE `creature` SET `position_x` = 7238.3, `position_y` = -143.3, `position_z` = 16.4, `orientation` = 5.8 WHERE `guid` = 127635;
UPDATE `creature` SET `position_x` = 7239.4, `position_y` = -141.2, `position_z` = 16.1, `orientation` = 5.8 WHERE `guid` = 127627;
UPDATE `creature` SET `position_x` = 7243.87, `position_y` = -132.9, `position_z` = 15.4, `orientation` = 0.04 WHERE `guid` = 127582;
UPDATE `creature` SET `position_x` = 7249.4, `position_y` = -132.65, `position_z` = 15.52, `orientation` = 3.05 WHERE `guid` = 127581;
UPDATE `creature` SET `position_x` = 7249.15, `position_y` = -156.1, `position_z` = 17.065, `orientation` = 6.04 WHERE `guid` = 127543;
UPDATE `creature` SET `position_x` = 7253.9, `position_y` = -156.22, `position_z` = 17.01, `orientation` = 3.5 WHERE `guid` = 127542;
UPDATE `creature` SET `position_x` = 7263.8, `position_y` = -144.7, `position_z` = 15, `orientation` = 3.2 WHERE `guid` = 127448;
-- Feralas
UPDATE `creature` SET `position_x` = -4402.6, `position_y` = 2187.4, `position_z` = 12.45, `orientation` = 2.35 WHERE `guid` = 99847;
UPDATE `creature` SET `position_x` = -4401.7, `position_y` = 2190.08, `position_z` = 12.35, `orientation` = 2.7 WHERE `guid` = 99894;
UPDATE `creature` SET `position_x` = -4415.05, `position_y` = 2186.4, `position_z` = 11.2, `orientation` = 1.71 WHERE `guid` = 99890;
UPDATE `creature` SET `position_x` = -4415.32, `position_y` = 2193.85, `position_z` = 10, `orientation` = 4.77 WHERE `guid` = 99891;
UPDATE `creature` SET `position_x` = -4400.05, `position_y` = 2208.15, `position_z` = 9.25, `orientation` = 3.5 WHERE `guid` = 99892;
UPDATE `creature` SET `position_x` = -4403.9, `position_y` = 2207.08, `position_z` = 9.22, `orientation` = 0.01 WHERE `guid` = 99893;
-- Ashenvale (Alliance)
UPDATE `creature` SET `position_x` = 3061, `position_y` = -3311.23, `position_z` = 150.06, `orientation` = 6.2 WHERE `guid` = 127633;
UPDATE `creature` SET `position_x` = 3060.8, `position_y` = -3314.04, `position_z` = 149.86, `orientation` = 6.2 WHERE `guid` = 127626;
UPDATE `creature` SET `position_x` = 3062.06, `position_y` = -3320.7, `position_z` = 149.2, `orientation` = 5.7 WHERE `guid` = 99876;
UPDATE `creature` SET `position_x` = 3067, `position_y` = -3322.75, `position_z` = 148.5, `orientation` = 2.66 WHERE `guid` = 99877;
UPDATE `creature` SET `position_x` = 3061.4, `position_y` = -3287.44, `position_z` = 154.3, `orientation` = 4.25 WHERE `guid` = 99878;
UPDATE `creature` SET `position_x` = 3059.34, `position_y` = -3291.4, `position_z` = 153.32, `orientation` = 1.17 WHERE `guid` = 99879;
UPDATE `creature` SET `position_x` = 3092.4, `position_y` = -3309, `position_z` = 150.22, `orientation` = 2.76 WHERE `guid` = 127447;
-- Westfall
UPDATE `creature` SET `position_x` = -10849, `position_y` = 1446.7, `position_z` = 41.6, `orientation` = 2.04 WHERE `guid` = 69231;
UPDATE `creature` SET `position_x` = -10846.4, `position_y` = 1448, `position_z` = 41.8, `orientation` = 2.04 WHERE `guid` = 1392;
UPDATE `creature` SET `position_x` = -10835.95, `position_y` = 1445.45, `position_z` = 42.6, `orientation` = 1.39 WHERE `guid` = 1241;
UPDATE `creature` SET `position_x` = -10834.3, `position_y` = 1449.7, `position_z` = 42.85, `orientation` = 4.16 WHERE `guid` = 1242;
UPDATE `creature` SET `position_x` = -10848.35, `position_y` = 1460, `position_z` = 44.26, `orientation` = 0.6 WHERE `guid` = 1243;
UPDATE `creature` SET `position_x` = -10843.63, `position_y` = 1463.02, `position_z` = 44.84, `orientation` = 3.67 WHERE `guid` = 1244;
-- Nagrand
UPDATE `creature` SET `position_x` = -2515.43, `position_y` = 7553.02, `position_z` = -1.5, `orientation` = 5.5 WHERE `guid` = 162336;
UPDATE `creature` SET `position_x` = -2513.47, `position_y` = 7555, `position_z` = -1.6, `orientation` = 5.27 WHERE `guid` = 161875;
UPDATE `creature` SET `position_x` = -2526.44, `position_y` = 7545.06, `position_z` = -2.2, `orientation` = 4.8 WHERE `guid` = 161869;
UPDATE `creature` SET `position_x` = -2526.17, `position_y` = 7540.18, `position_z` = -1.5, `orientation` = 1.85 WHERE `guid` = 161874;
UPDATE `creature` SET `position_x` = -2505.2, `position_y` = 7530, `position_z` = 0, `orientation` = 0.85 WHERE `guid` = 162339;
UPDATE `creature` SET `position_x` = -2501, `position_y` = 7535.3, `position_z` = -0.1, `orientation` = 4.12 WHERE `guid` = 161870;
-- Tirisfal
UPDATE `creature` SET `position_x` = 2277.88, `position_y` = 447.66, `position_z` = 34, `orientation` = 3.16 WHERE `guid` = 69245;
UPDATE `creature` SET `position_x` = 2277.92, `position_y` = 445.22, `position_z` = 34.05, `orientation` = 3.16 WHERE `guid` = 69259;
UPDATE `creature` SET `position_x` = 2264.46, `position_y` = 454.52, `position_z` = 34.41, `orientation` = 4.94 WHERE `guid` = 69261;
UPDATE `creature` SET `position_x` = 2265.67, `position_y` = 449.78, `position_z` = 34.34, `orientation` = 1.87 WHERE `guid` = 69260;
UPDATE `creature` SET `position_x` = 2275.6, `position_y` = 462.32, `position_z` = 34, `orientation` = 0.33 WHERE `guid` = 69262;
UPDATE `creature` SET `position_x` = 2279.2, `position_y` = 462.72, `position_z` = 33.83, `orientation` = 3.3 WHERE `guid` = 69263;
-- Thunderbluff
UPDATE `creature` SET `position_x` = -1033.75, `position_y` = 296.65, `position_z` = 135.77, `orientation` = 2.44 WHERE `guid` = 127594;
UPDATE `creature` SET `position_x` = -1042.07, `position_y` = 289.05, `position_z` = 135.66, `orientation` = 2.3 WHERE `guid` = 127586;
UPDATE `creature` SET `position_x` = -1018.5, `position_y` = 303.62, `position_z` = 135.77, `orientation` = 2.64 WHERE `guid` = 127616;
UPDATE `creature` SET `position_x` = -1017.2, `position_y` = 318.62, `position_z` = 135.45, `orientation` = 5.68 WHERE `guid` = 127454;
UPDATE `creature` SET `position_x` = -1012.9, `position_y` = 315.63, `position_z` = 135.73, `orientation` = 2.37 WHERE `guid` = 69262;
-- Undercity
UPDATE `creature` SET `position_x` = 1828.2, `position_y` = 222.19, `position_z` = 60.65, `orientation` = 4.81 WHERE `guid` = 1360;
UPDATE `creature` SET `position_x` = 1828.61, `position_y` = 217.23, `position_z` = 60.6, `orientation` = 1.8 WHERE `guid` = 1356;
-- Eversong Woods
UPDATE `creature` SET `position_x` = 9380.65, `position_y` = -6769.76, `position_z` = 14.56, `orientation` = 4.34 WHERE `guid` = 161887;
-- Stormwind
UPDATE `creature` SET `position_x` = -8832.22, `position_y` = 874, `position_z` = 98.74, `orientation` = 4.9 WHERE `guid` = 1378;
-- Exodar
UPDATE `creature` SET `position_x` = -3793.86, `position_y` = -11515.6, `position_z` = -134.6, `orientation` = 6.1 WHERE `guid` = 162352;
UPDATE `creature` SET `position_x` = -3788.55, `position_y` = -11500.23, `position_z` = -134.6, `orientation` = 0.58 WHERE `guid` = 162354;
-- Darnassus
UPDATE `creature` SET `position_x` = 9968.05, `position_y` = 2233.62, `position_z` = 1331.72, `orientation` = 5.13 WHERE `guid` = 127395;
UPDATE `creature` SET `position_x` = 9975.75, `position_y` = 2236.22, `position_z` = 1330.85, `orientation` = 4.8 WHERE `guid` = 133981;
UPDATE `creature` SET `position_x` = 9977.4, `position_y` = 2213.69, `position_z` = 1329.1, `orientation` = 2.16 WHERE `guid` = 127446;
UPDATE `creature` SET `position_x` = 9960.77, `position_y` = 2222.92, `position_z` = 1330.63, `orientation` = 1.44 WHERE `guid` = 99880;
UPDATE `creature` SET `position_x` = 9961.42, `position_y` = 2229.2, `position_z` = 1331.54, `orientation` = 4.74 WHERE `guid` = 99868;
UPDATE `creature` SET `position_x` = 9964.28, `position_y` = 2191.78, `position_z` = 1328.63, `orientation` = 5.97 WHERE `guid` = 99867;
UPDATE `creature` SET `position_x` = 9968.9, `position_y` = 2189.76, `position_z` = 1329, `orientation` = 2.74 WHERE `guid` = 127528;
UPDATE `creature` SET `position_x` = 10003.13, `position_y` = 2197.4, `position_z` = 1328.08, `orientation` = 2.7 WHERE `guid` = 127443;
UPDATE `creature` SET `position_x` = 10003.74, `position_y` = 2221.33, `position_z` = 1329.64, `orientation` = 3.4 WHERE `guid` = 127634;

-- Wrong Quest
UPDATE `quest_template` SET `RequiredRaces` = 2098253 WHERE `id` IN (11821); -- Nagrand Quest
UPDATE `quest_template` SET `RequiredRaces` = 946 WHERE `id` IN (11732, 11755); -- Arathi Highlands / Hinterlands

DELETE FROM `gameobject_questrelation` WHERE `id` IN (187958, 187948, 187957, 187914, 187938, 208089, 207982, 207985, 208093, 187954, 187966, 187974, 187559, 208094, 207983, 208090, 207986, 187928, 187932, 187968, 187971);
INSERT INTO `gameobject_questrelation` VALUES
(187958, 11770), -- Durotar (Alliance)
(187948, 11765), -- Ashenvale (Alliance)
(187957, 11769), -- Desolace (Alliance)
(187971, 11783), -- Northern Barrens (Alliance)
(187968, 11780), -- Stonetalon Mountains (Alliance)
(187932, 11749), -- Loch Modan (Horde)
(187928, 11745), -- Elwynn Forest (Horde)
(207986, 28914), -- Southern Barrens (Horde)
(208090, 28944), -- Twilight Highlands (Horde)
(207983, 28911), -- Stranglethorn (Horde)
(208094, 28948), -- Uldum (Alliance)
(187559, 11580), -- Silverpine
(187974, 11786), -- Tirisfal
(187966, 11778), -- Nagrand
(187954, 11766), -- Badlands
(208093, 28947), -- Uldum (Horde)
(207985, 28913), -- Southern Barrens (Alliance)
(207982, 28910), -- Stranglethorn (Alliance)
(208089, 28943), -- Twilight Highlands (Alliance)
(187914, 11732), -- Arathi Highlands
(187938, 11755); -- Hinterlands

DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (187914, 187938, 187954, 187974, 187559, 187928, 187932);
INSERT INTO `gameobject_involvedrelation` VALUES
(187932, 11749), -- Loch Modan (Horde)
(187928, 11745), -- Elwynn Forest (Horde)
(187559, 11580), -- Silverpine
(187974, 11786), -- Tirisfal
(187954, 11766), -- Badlands
(187914, 11732), -- Arathi Highlands
(187938, 11755); -- Hinterlands

DELETE FROM `creature_questrelation` WHERE `id` IN (25903);
INSERT INTO `creature_questrelation` VALUES
(25903, 11821); -- Nagrand Flame Warden: Honor the Flames

DELETE FROM `creature_involvedrelation` WHERE `id` IN (25903);
INSERT INTO `creature_involvedrelation` VALUES
(25903, 11821); -- Nagrand Flame Warden: Honor the Flames

-- creature correction
UPDATE `creature_template` SET `faction_h` = 35, `faction_a` = 35 WHERE `entry` = 16781; -- Midsummer Celebrators

DELETE FROM `creature_template_addon` WHERE `entry` = 16781;
INSERT INTO `creature_template_addon` VALUES
(16781, 0, 0, 0, 0, 1, ''); -- Talk Emotion

-- Questpart
UPDATE `creature_template` SET `faction_h` = 2167, `faction_a` = 2167 WHERE `entry` = 26221;

UPDATE `quest_template` SET `MaxLevel` = 28 WHERE `id` = 11917;
UPDATE `quest_template` SET `MaxLevel` = 38 WHERE `id` = 11947;
UPDATE `quest_template` SET `MaxLevel` = 48 WHERE `id` = 11948;
UPDATE `quest_template` SET `MaxLevel` = 55 WHERE `id` = 11952;
UPDATE `quest_template` SET `MaxLevel` = 63 WHERE `id` = 11953;
UPDATE `quest_template` SET `MaxLevel` = 85 WHERE `id` = 11954;

-- Unusal Activity `modelid1` = 10274, 
DELETE FROM `creature` WHERE `id` = 25324;
DELETE FROM `game_event_creature_quest` WHERE `id` = 25324;
UPDATE `creature_template` SET `modelid2` = 0, `minLevel` = 22, `maxLevel` = 26, `faction_h` = 2167, `faction_a` = 2167 WHERE `entry` = 25324;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (26534, 25324, 26221);
UPDATE `quest_template` SET `PrevQuestID` = 11891 WHERE `id` = 29092;
UPDATE `quest_template` SET `RequiredRaces` = 946 WHERE `id` = 12012;

DELETE FROM `creature_text` WHERE `entry` = 25324;
INSERT INTO `creature_text` VALUES
(25324, 0, 0, 'What is it you need?', 12, 0, 100, 0, 0, 0, 'Earthen Ring Guide summon say', 0),
(25324, 0, 1, 'Have you discovered something?', 12, 0, 100, 0, 0, 0, 'Earthen Ring Guide summon say', 0),
(25324, 0, 2, 'The elemental spirits are restless.', 12, 0, 100, 0, 0, 0, 'Earthen Ring Guide summon say', 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26534, 25324, 26221);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(26221, 0, 0, 1, 62, 100, 0, 9157, 0, 0, 0, 56, 35828, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On option select add item'),
(26221, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous Event - close gossip'),
(26534, 0, 0, 0, 1, 100, 1, 1, 1, 1, 1, 12, 25324, 3, 60000, 60000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC summon Earthen Ring Guide'),
(25324, 0, 0, 2, 1, 100, 1, 1, 1, 1, 1, 29, 0, 0, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 'On OOC follow player'),
(25324, 0, 1, 0, 60, 100, 1, 60000, 60000, 1, 1, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On Update despawn'),
(25324, 0, 2, 0, 61, 100, 1, 0, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with first event - say');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 9157;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,9157,0,0,0,2,0,35828,1,0,1,0,0,'','Show gossip if player has not item'),
(15,9157,0,0,0,9,0,11886,0,0,0,0,0,'','Show gossip if player has quest'),
(15,9157,0,0,1,2,0,35828,1,0,1,0,0,'','Show gossip if player has not item'),
(15,9157,0,0,1,9,0,11891,0,0,0,0,0,'','Show gossip if player has quest');

-- Striking back (85)
REPLACE INTO `game_event_creature` VALUES
('1', '157074'),
('1', '157075'),
('1', '157076'),
('1', '157077'),
('1', '157078'),
('1', '157079'),
('1', '157068'),
('1', '157069'),
('1', '157070'),
('1', '157071'),
('1', '157072'),
('1', '157073');

-- Incense for Festival Scorchlings
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 16818;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 16818;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(16818, 0, 0, 0, 19, 100, 0, 11966, 0, 0, 0, 15, 11966, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Quest accept - complete quest');

-- Torch Tossing
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 25535, `RequiredNpcOrGoCount1` = 8, `SpecialFlags` = 0  WHERE `id` IN (11922, 11731);
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 25535, `RequiredNpcOrGoCount1` = 20, `SpecialFlags` = 0 WHERE `id` IN (11926, 11921);
UPDATE `creature_template` SET `AIName` = 'SmartAI', `name` = 'Torch Brazier Hit', `InhabitType` = 4, `scale` = 3, `modelid1` = 4449, `flags_extra` = 0, `unit_flags` = 33554948, `unit_flags2` = 2 WHERE `entry` = 25535;
UPDATE `creature` SET `spawntimesecs` = 3 WHERE `id` = 25535;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (25535, 26113);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(25535, 0, 0, 1, 8, 100, 1, 45732, 1, 1, 1, 33, 25535, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On spellhit give questcredit'),
(25535, 0, 1, 2, 61, 100, 1, 0, 0, 0, 0, 11, 43541, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous cast spell self'),
(25535, 0, 2, 3, 61, 100, 1, 0, 0, 0, 0, 28, 64328, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous remove aura self'),
(25535, 0, 3, 0, 61, 100, 1, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous Event despawn'),
(25535, 0, 4, 0, 60, 100, 1, 30000, 30000, 1, 1, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On Update despawn'),
(25535, 0, 5, 0, 1, 100, 1, 1, 1, 1, 1, 11, 64328, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC cast Hunters Mark Cosmetic self'),
(26113, 0, 0, 0, 19, 100, 0, 11922, 0, 0, 0, 15, 11922, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Quest accept call areaexplor'),
(26113, 0, 1, 0, 19, 100, 0, 11731, 0, 0, 0, 15, 11731, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Quest accept call areaexplor'),
(26113, 0, 2, 0, 19, 100, 0, 11926, 0, 0, 0, 15, 11926, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Quest accept call areaexplor'),
(26113, 0, 3, 0, 19, 100, 0, 11921, 0, 0, 0, 15, 11921, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Quest accept call areaexplor');

-- Torch Catching
-- Spell doesnt work + I duuno how to do it so ill set it to autocomplete
UPDATE `quest_template` SET `Method` = 0 WHERE `id` IN (11657, 11923, 11924, 11925);

-- Flame of Orgrimmar/ Stormwind
-- Stealing Stormwind's/ Orgrimmar's Flame
UPDATE `gameobject_template` SET `flags` = 0, `AIName` = 'SmartGameObjectAI' WHERE `entry` IN (181336, 181332, 181337, 188129, 181335, 181333, 181334, 188128);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (181336, 181332, 181337, 188129, 181335, 181333, 181334, 188128);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(181336, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 85, 29130, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello invoker cast spell'), -- Orgrimmar
(181337, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 85, 29132, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello invoker cast spell'), -- Thunderbluff
(181335, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 85, 29133, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello invoker cast spell'), -- Undercity
(188129, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 85, 46689, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello invoker cast spell'), -- Silvermoon
(181334, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 85, 29099, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello invoker cast spell'), -- Darnassus
(181332, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 85, 29101, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello invoker cast spell'), -- Stormwind
(181333, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 85, 29102, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello invoker cast spell'), -- Ironforge
(188128, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 85, 46690, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello invoker cast spell'); -- Exodar

-- A Thief's Reward
UPDATE `quest_template` SET `NextQuestId` = 9365 WHERE `id` IN (9324, 9325, 9326, 11935);
UPDATE `quest_template` SET `NextQuestId` = 9339 WHERE `id` IN (9330, 9331, 9332, 11933);

-- Cosmetic
-- Midsummer Celebrant 
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 16781;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 16781;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(16781, 0, 0, 0, 60, 10, 0, 45000, 45000, 45000, 45000, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On Update say');

DELETE FROM `creature_text` WHERE `entry` = 16781;
INSERT INTO `creature_text` VALUES
(16781, 0, 0, 'The fire will never be extinguished!', 12, 0, 100, 0, 0, 0, 'Midsummer Celebrant say', 0),
(16781, 0, 1, "I'd like to see them try to steal our flame.", 12, 0, 100, 0, 0, 0, 'Midsummer Celebrant say', 0);
