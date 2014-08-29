-- ICC Loot
-- Lord Morrowgar
-- 10 NH
SET @entry = 36612;
SET @reference = 50339;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50339','0','1','1','1','1'),
(@reference,'50759','0','1','1','1','1'),
(@reference,'50772','0','1','1','1','1'),
(@reference,'50761','0','1','1','1','1'),
(@reference,'50771','0','1','1','1','1'),
(@reference,'50764','0','1','1','1','1'),
(@reference,'50762','0','1','1','1','1'),
(@reference,'50760','0','1','1','1','1'),
(@reference,'50773','0','1','1','1','1'),
(@reference,'50774','0','1','1','1','1'),
(@reference,'50775','0','1','1','1','1'),
(@reference,'50763','0','1','1','1','1');

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 37958;
SET @reference = 50346;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50346','0','1','1','1','1'),
(@reference,'51928','0','1','1','1','1'),
(@reference,'51929','0','1','1','1','1'),
(@reference,'51930','0','1','1','1','1'),
(@reference,'51931','0','1','1','1','1'),
(@reference,'51932','0','1','1','1','1'),
(@reference,'51933','0','1','1','1','1'),
(@reference,'51934','0','1','1','1','1'),
(@reference,'51935','0','1','1','1','1'),
(@reference,'51936','0','1','1','1','1'),
(@reference,'51937','0','1','1','1','1'),
(@reference,'51938','0','1','1','1','1');

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 25 NH
SET @entry = 37957;
SET @reference = 49949;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'49949','0','1','1','1','1'),
(@reference,'49950','0','1','1','1','1'),
(@reference,'49951','0','1','1','1','1'),
(@reference,'49952','0','1','1','1','1'),
(@reference,'49960','0','1','1','1','1'),
(@reference,'49964','0','1','1','1','1'),
(@reference,'49967','0','1','1','1','1'),
(@reference,'49968','0','1','1','1','1'),
(@reference,'49975','0','1','1','1','1'),
(@reference,'49976','0','1','1','1','1'),
(@reference,'49977','0','1','1','1','1'),
(@reference,'49978','0','1','1','1','1'),
(@reference,'49979','0','1','1','1','1'),
(@reference,'49980','0','1','1','1','1'),
(@reference,'50415','0','1','1','1','1');

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','3',1,'1'); -- Shadowfrost Shard

-- 25 HC
SET @entry = 37959;
SET @reference = 50604;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50604','0','1','1','1','1'),
(@reference,'50605','0','1','1','1','1'),
(@reference,'50606','0','1','1','1','1'),
(@reference,'50607','0','1','1','1','1'),
(@reference,'50608','0','1','1','1','1'),
(@reference,'50609','0','1','1','1','1'),
(@reference,'50610','0','1','1','1','1'),
(@reference,'50611','0','1','1','1','1'),
(@reference,'50612','0','1','1','1','1'),
(@reference,'50613','0','1','1','1','1'),
(@reference,'50614','0','1','1','1','1'),
(@reference,'50615','0','1','1','1','1'),
(@reference,'50616','0','1','1','1','1'),
(@reference,'50617','0','1','1','1','1'),
(@reference,'50709','0','1','1','1','1');

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','3',1,'1'); -- Shadowfrost Shard

-- Lady Deathwisper
-- 10 NH
SET @entry = 36855;
SET @reference = 50342;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50342','0','1','1','1','1'),
(@reference,'50776','0','1','1','1','1'),
(@reference,'50777','0','1','1','1','1'),
(@reference,'50778','0','1','1','1','1'),
(@reference,'50779','0','1','1','1','1'),
(@reference,'50780','0','1','1','1','1'),
(@reference,'50781','0','1','1','1','1'),
(@reference,'50782','0','1','1','1','1'),
(@reference,'50783','0','1','1','1','1'),
(@reference,'50784','0','1','1','1','1'),
(@reference,'50785','0','1','1','1','1'),
(@reference,'50786','0','1','1','1','1');

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 38296;
SET @reference = 50343;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50343','0','1','1','1','1'),
(@reference,'51917','0','1','1','1','1'),
(@reference,'51918','0','1','1','1','1'),
(@reference,'51919','0','1','1','1','1'),
(@reference,'51920','0','1','1','1','1'),
(@reference,'51921','0','1','1','1','1'),
(@reference,'51922','0','1','1','1','1'),
(@reference,'51923','0','1','1','1','1'),
(@reference,'51924','0','1','1','1','1'),
(@reference,'51925','0','1','1','1','1'),
(@reference,'51926','0','1','1','1','1'),
(@reference,'51927','0','1','1','1','1');

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 25 NH
SET @entry = 38106;
SET @reference = 49982;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'49982','0','1','1','1','1'),
(@reference,'49983','0','1','1','1','1'),
(@reference,'49985','0','1','1','1','1'),
(@reference,'49986','0','1','1','1','1'),
(@reference,'49987','0','1','1','1','1'),
(@reference,'49988','0','1','1','1','1'),
(@reference,'49989','0','1','1','1','1'),
(@reference,'49990','0','1','1','1','1'),
(@reference,'49991','0','1','1','1','1'),
(@reference,'49992','0','1','1','1','1'),
(@reference,'49993','0','1','1','1','1'),
(@reference,'49994','0','1','1','1','1'),
(@reference,'49995','0','1','1','1','1'),
(@reference,'49996','0','1','1','1','1'),
(@reference,'50034','0','1','1','1','1');

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','3',1,'1'); -- Shadowfrost Shard

-- 25 HC
SET @entry = 38297;
SET @reference = 50638;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50638','0','1','1','1','1'),
(@reference,'50639','0','1','1','1','1'),
(@reference,'50640','0','1','1','1','1'),
(@reference,'50641','0','1','1','1','1'),
(@reference,'50642','0','1','1','1','1'),
(@reference,'50643','0','1','1','1','1'),
(@reference,'50644','0','1','1','1','1'),
(@reference,'50645','0','1','1','1','1'),
(@reference,'50646','0','1','1','1','1'),
(@reference,'50647','0','1','1','1','1'),
(@reference,'50648','0','1','1','1','1'),
(@reference,'50649','0','1','1','1','1'),
(@reference,'50650','0','1','1','1','1'),
(@reference,'50651','0','1','1','1','1'),
(@reference,'50652','0','1','1','1','1');

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','3',1,'1'); -- Shadowfrost Shard

-- Deathbringer Sauerfang
-- 10 NH
SET @entry = 202239;
SET @reference = 50798;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50798','0','1','1','1','1'),
(@reference,'50799','0','1','1','1','1'),
(@reference,'50800','0','1','1','1','1'),
(@reference,'50801','0','1','1','1','1'),
(@reference,'50802','0','1','1','1','1'),
(@reference,'50803','0','1','1','1','1'),
(@reference,'50804','0','1','1','1','1'),
(@reference,'50805','0','1','1','1','1'),
(@reference,'50806','0','1','1','1','1'),
(@reference,'50807','0','1','1','1','1'),
(@reference,'50808','0','1','1','1','1'),
(@reference,'50809','0','1','1','1','1');

insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 202238;
SET @reference = 51894;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'51894','0','1','1','1','1'),
(@reference,'51895','0','1','1','1','1'),
(@reference,'51896','0','1','1','1','1'),
(@reference,'51897','0','1','1','1','1'),
(@reference,'51898','0','1','1','1','1'),
(@reference,'51899','0','1','1','1','1'),
(@reference,'51900','0','1','1','1','1'),
(@reference,'51901','0','1','1','1','1'),
(@reference,'51902','0','1','1','1','1'),
(@reference,'51903','0','1','1','1','1'),
(@reference,'51904','0','1','1','1','1'),
(@reference,'51905','0','1','1','1','1');

insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'), -- Loot
(@entry,'2','100','1','2',-52025,'1'); -- NH Token

-- 25 NH
SET @entry = 202240;
SET @reference = 50014;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50014','0','1','1','1','1'),
(@reference,'50015','0','1','1','1','1'),
(@reference,'50333','0','1','1','1','1'),
(@reference,'50362','0','1','1','1','1'),
(@reference,'50412','0','1','1','1','1');

insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'49908','100','1','3',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','4',1,'1'); -- Shadowfrost Shard

-- 25 HC
SET @entry = 202241;
SET @reference = 50363;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50363','0','1','1','1','1'),
(@reference,'50668','0','1','1','1','1'),
(@reference,'50670','0','1','1','1','1'),
(@reference,'50671','0','1','1','1','1'),
(@reference,'50672','0','1','1','1','1');

insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'3','100','1','3',-52030,'1'), -- HC Token
(@entry,'49908','100','1','4',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','5',1,'1'); -- Shadowfrost Shard

-- Festergut
-- 10 NH
SET @entry = 36626;
SET @reference = 50990;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50810,0,1,1,1,1),
(@reference,50811,0,1,1,1,1),
(@reference,50812,0,1,1,1,1),
(@reference,50852,0,1,1,1,1),
(@reference,50858,0,1,1,1,1),
(@reference,50859,0,1,1,1,1),
(@reference,50966,0,1,1,1,1),
(@reference,50967,0,1,1,1,1),
(@reference,50985,0,1,1,1,1),
(@reference,50986,0,1,1,1,1),
(@reference,50988,0,1,1,1,1),
(@reference,50990,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 37505;
SET @reference = 51893;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51882,0,1,1,1,1),
(@reference,51883,0,1,1,1,1),
(@reference,51884,0,1,1,1,1),
(@reference,51885,0,1,1,1,1),
(@reference,51886,0,1,1,1,1),
(@reference,51887,0,1,1,1,1),
(@reference,51888,0,1,1,1,1),
(@reference,51889,0,1,1,1,1),
(@reference,51890,0,1,1,1,1),
(@reference,51891,0,1,1,1,1),
(@reference,51892,0,1,1,1,1),
(@reference,51893,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 25 NH
SET @entry = 37504;
SET @reference = 50414;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50035,0,1,1,1,1),
(@reference,50036,0,1,1,1,1),
(@reference,50037,0,1,1,1,1),
(@reference,50038,0,1,1,1,1),
(@reference,50040,0,1,1,1,1),
(@reference,50041,0,1,1,1,1),
(@reference,50042,0,1,1,1,1),
(@reference,50056,0,1,1,1,1),
(@reference,50059,0,1,1,1,1),
(@reference,50060,0,1,1,1,1),
(@reference,50061,0,1,1,1,1),
(@reference,50062,0,1,1,1,1),
(@reference,50063,0,1,1,1,1),
(@reference,50064,0,1,1,1,1),
(@reference,50413,0,1,1,1,1),
(@reference,50414,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','3',1,'1'), -- Shadowfrost Shard
(@entry,'50226','-100','1','4',1,'1'); -- Festergut's Acidic Blood

-- 25 HC
SET @entry = 37506;
SET @reference = 50703;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50688,0,1,1,1,1),
(@reference,50689,0,1,1,1,1),
(@reference,50690,0,1,1,1,1),
(@reference,50691,0,1,1,1,1),
(@reference,50692,0,1,1,1,1),
(@reference,50693,0,1,1,1,1),
(@reference,50694,0,1,1,1,1),
(@reference,50695,0,1,1,1,1),
(@reference,50696,0,1,1,1,1),
(@reference,50697,0,1,1,1,1),
(@reference,50698,0,1,1,1,1),
(@reference,50699,0,1,1,1,1),
(@reference,50700,0,1,1,1,1),
(@reference,50701,0,1,1,1,1),
(@reference,50702,0,1,1,1,1),
(@reference,50703,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','3',1,'1'), -- Shadowfrost Shard
(@entry,'50226','-100','1','4',1,'1'); -- Festergut's Acidic Blood

-- Rotface
-- 10 NH
SET @entry = 36627;
SET @reference = 51009;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50998,0,1,1,1,1),
(@reference,50999,0,1,1,1,1),
(@reference,51000,0,1,1,1,1),
(@reference,51001,0,1,1,1,1),
(@reference,51002,0,1,1,1,1),
(@reference,51003,0,1,1,1,1),
(@reference,51004,0,1,1,1,1),
(@reference,51005,0,1,1,1,1),
(@reference,51006,0,1,1,1,1),
(@reference,51007,0,1,1,1,1),
(@reference,51008,0,1,1,1,1),
(@reference,51009,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 38549;
SET @reference = 51881;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51870,0,1,1,1,1),
(@reference,51871,0,1,1,1,1),
(@reference,51872,0,1,1,1,1),
(@reference,51873,0,1,1,1,1),
(@reference,51874,0,1,1,1,1),
(@reference,51875,0,1,1,1,1),
(@reference,51876,0,1,1,1,1),
(@reference,51877,0,1,1,1,1),
(@reference,51878,0,1,1,1,1),
(@reference,51879,0,1,1,1,1),
(@reference,51880,0,1,1,1,1),
(@reference,51881,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 25 NH
SET @entry = 38390;
SET @reference = 50353;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50016,0,1,1,1,1),
(@reference,50019,0,1,1,1,1),
(@reference,50020,0,1,1,1,1),
(@reference,50021,0,1,1,1,1),
(@reference,50022,0,1,1,1,1),
(@reference,50023,0,1,1,1,1),
(@reference,50024,0,1,1,1,1),
(@reference,50025,0,1,1,1,1),
(@reference,50026,0,1,1,1,1),
(@reference,50027,0,1,1,1,1),
(@reference,50028,0,1,1,1,1),
(@reference,50030,0,1,1,1,1),
(@reference,50032,0,1,1,1,1),
(@reference,50033,0,1,1,1,1),
(@reference,50353,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','3',1,'1'), -- Shadowfrost Shard
(@entry,'50231','-100','1','4',1,'1'); -- Rotface's Acidic Blood

-- 25 HC
SET @entry = 38550;
SET @reference = 50687;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50348,0,1,1,1,1),
(@reference,50673,0,1,1,1,1),
(@reference,50674,0,1,1,1,1),
(@reference,50675,0,1,1,1,1),
(@reference,50676,0,1,1,1,1),
(@reference,50677,0,1,1,1,1),
(@reference,50678,0,1,1,1,1),
(@reference,50679,0,1,1,1,1),
(@reference,50680,0,1,1,1,1),
(@reference,50681,0,1,1,1,1),
(@reference,50682,0,1,1,1,1),
(@reference,50684,0,1,1,1,1),
(@reference,50685,0,1,1,1,1),
(@reference,50686,0,1,1,1,1),
(@reference,50687,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','3',1,'1'), -- Shadowfrost Shard
(@entry,'50231','-100','1','4',1,'1'); -- Rotface's Acidic Blood

-- Professor Putricide
-- 10 NH
SET @entry = 36678;
SET @reference = 51020;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50341,0,1,1,1,1),
(@reference,51010,0,1,1,1,1),
(@reference,51011,0,1,1,1,1),
(@reference,51012,0,1,1,1,1),
(@reference,51013,0,1,1,1,1),
(@reference,51014,0,1,1,1,1),
(@reference,51015,0,1,1,1,1),
(@reference,51016,0,1,1,1,1),
(@reference,51017,0,1,1,1,1),
(@reference,51018,0,1,1,1,1),
(@reference,51019,0,1,1,1,1),
(@reference,51020,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 38585;
SET @reference = 51869;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50344,0,1,1,1,1),
(@reference,51859,0,1,1,1,1),
(@reference,51860,0,1,1,1,1),
(@reference,51861,0,1,1,1,1),
(@reference,51862,0,1,1,1,1),
(@reference,51863,0,1,1,1,1),
(@reference,51864,0,1,1,1,1),
(@reference,51865,0,1,1,1,1),
(@reference,51866,0,1,1,1,1),
(@reference,51867,0,1,1,1,1),
(@reference,51868,0,1,1,1,1),
(@reference,51869,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'), -- Loot
(@entry,'2','100','1','2',-52025,'1'); -- NH Token

-- 25 NH
SET @entry = 38431;
SET @reference = 50351;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50067,0,1,1,1,1),
(@reference,50068,0,1,1,1,1),
(@reference,50069,0,1,1,1,1),
(@reference,50179,0,1,1,1,1),
(@reference,50351,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'49908','100','1','3',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','4',1,'1'); -- Shadowfrost Shard

-- 25 HC
SET @entry = 38586;
SET @reference = 50708;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50704,0,1,1,1,1),
(@reference,50705,0,1,1,1,1),
(@reference,50706,0,1,1,1,1),
(@reference,50707,0,1,1,1,1),
(@reference,50708,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'3','100','1','3',-52030,'1'), -- HC Token
(@entry,'49908','100','1','4',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','5',1,'1'); -- Shadowfrost Shard

-- Valthiria Dreamwalker
-- 10 NH
SET @entry = 201959;
SET @reference = 51561;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'51561','0','1','1','1','1'),
(@reference,'51562','0','1','1','1','1'),
(@reference,'51563','0','1','1','1','1'),
(@reference,'51564','0','1','1','1','1'),
(@reference,'51565','0','1','1','1','1'),
(@reference,'51566','0','1','1','1','1'),
(@reference,'51582','0','1','1','1','1'),
(@reference,'51583','0','1','1','1','1'),
(@reference,'51584','0','1','1','1','1'),
(@reference,'51585','0','1','1','1','1'),
(@reference,'51586','0','1','1','1','1'),
(@reference,'51777','0','1','1','1','1');

insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 202238;
SET @reference = 51823;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'51823','0','1','1','1','1'),
(@reference,'51824','0','1','1','1','1'),
(@reference,'51825','0','1','1','1','1'),
(@reference,'51826','0','1','1','1','1'),
(@reference,'51827','0','1','1','1','1'),
(@reference,'51828','0','1','1','1','1'),
(@reference,'51829','0','1','1','1','1'),
(@reference,'51830','0','1','1','1','1'),
(@reference,'51831','0','1','1','1','1'),
(@reference,'51832','0','1','1','1','1'),
(@reference,'51833','0','1','1','1','1'),
(@reference,'51834','0','1','1','1','1');

insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 25 NH
SET @entry = 202339;
SET @reference = 50183;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50183','0','1','1','1','1'),
(@reference,'50185','0','1','1','1','1'),
(@reference,'50186','0','1','1','1','1'),
(@reference,'50187','0','1','1','1','1'),
(@reference,'50188','0','1','1','1','1'),
(@reference,'50190','0','1','1','1','1'),
(@reference,'50192','0','1','1','1','1'),
(@reference,'50195','0','1','1','1','1'),
(@reference,'50199','0','1','1','1','1'),
(@reference,'50202','0','1','1','1','1'),
(@reference,'50205','0','1','1','1','1'),
(@reference,'50416','0','1','1','1','1'),
(@reference,'50417','0','1','1','1','1'),
(@reference,'50418','0','1','1','1','1'),
(@reference,'50472','0','1','1','1','1');

insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','3',1,'1'); -- Shadowfrost Shard

-- 25 HC
SET @entry = 202340;
SET @reference = 50618;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,'50618','0','1','1','1','1'),
(@reference,'50619','0','1','1','1','1'),
(@reference,'50620','0','1','1','1','1'),
(@reference,'50621','0','1','1','1','1'),
(@reference,'50622','0','1','1','1','1'),
(@reference,'50623','0','1','1','1','1'),
(@reference,'50624','0','1','1','1','1'),
(@reference,'50625','0','1','1','1','1'),
(@reference,'50626','0','1','1','1','1'),
(@reference,'50627','0','1','1','1','1'),
(@reference,'50628','0','1','1','1','1'),
(@reference,'50629','0','1','1','1','1'),
(@reference,'50630','0','1','1','1','1'),
(@reference,'50631','0','1','1','1','1'),
(@reference,'50632','0','1','1','1','1');

insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','3',1,'1'); -- Shadowfrost Shard

-- Sindragosa
-- 10 NH
SET @entry = 36853;
SET @reference = 51792;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51779,0,1,1,1,1),
(@reference,51782,0,1,1,1,1),
(@reference,51783,0,1,1,1,1),
(@reference,51784,0,1,1,1,1),
(@reference,51785,0,1,1,1,1),
(@reference,51786,0,1,1,1,1),
(@reference,51787,0,1,1,1,1),
(@reference,51788,0,1,1,1,1),
(@reference,51789,0,1,1,1,1),
(@reference,51790,0,1,1,1,1),
(@reference,51791,0,1,1,1,1),
(@reference,51792,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 38266;
SET @reference = 51822;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51026,-100,1,1,1,1),
(@reference,51811,0,1,1,1,1),
(@reference,51812,0,1,1,1,1),
(@reference,51813,0,1,1,1,1),
(@reference,51814,0,1,1,1,1),
(@reference,51815,0,1,1,1,1),
(@reference,51816,0,1,1,1,1),
(@reference,51817,0,1,1,1,1),
(@reference,51818,0,1,1,1,1),
(@reference,51819,0,1,1,1,1),
(@reference,51820,0,1,1,1,1),
(@reference,51821,0,1,1,1,1),
(@reference,51822,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'), -- Loot
(@entry,'2','100','1','2',-52025,'1'); -- NH Token

-- 25 NH
SET @entry = 38265;
SET @reference = 50424;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50360,0,1,1,1,1),
(@reference,50361,0,1,1,1,1),
(@reference,50421,0,1,1,1,1),
(@reference,50423,0,1,1,1,1),
(@reference,50424,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'49908','100','1','3',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','4',1,'1'); -- Shadowfrost Shard

-- 25 HC
SET @entry = 38267;
SET @reference = 51027;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50364,0,1,1,1,1),
(@reference,50365,0,1,1,1,1),
(@reference,50633,0,1,1,1,1),
(@reference,50635,0,1,1,1,1),
(@reference,50636,0,1,1,1,1),
(@reference,51027,-100,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'3','100','1','3',-52030,'1'), -- HC Token
(@entry,'49908','100','1','4',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','5',1,'1'); -- Shadowfrost Shard

-- Blood Prince Council
-- 10 NH
SET @entry = 37970;
SET @reference = 51383;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51021,0,1,1,1,1),
(@reference,51022,0,1,1,1,1),
(@reference,51023,0,1,1,1,1),
(@reference,51024,0,1,1,1,1),
(@reference,51025,0,1,1,1,1),
(@reference,51325,0,1,1,1,1),
(@reference,51326,0,1,1,1,1),
(@reference,51379,0,1,1,1,1),
(@reference,51380,0,1,1,1,1),
(@reference,51381,0,1,1,1,1),
(@reference,51382,0,1,1,1,1),
(@reference,51383,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 38784;
SET @reference = 51858;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51847,0,1,1,1,1),
(@reference,51848,0,1,1,1,1),
(@reference,51849,0,1,1,1,1),
(@reference,51850,0,1,1,1,1),
(@reference,51851,0,1,1,1,1),
(@reference,51852,0,1,1,1,1),
(@reference,51853,0,1,1,1,1),
(@reference,51854,0,1,1,1,1),
(@reference,51855,0,1,1,1,1),
(@reference,51856,0,1,1,1,1),
(@reference,51857,0,1,1,1,1),
(@reference,51858,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 25 NH
SET @entry = 38401;
SET @reference = 50184;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,49919,0,1,1,1,1),
(@reference,50071,0,1,1,1,1),
(@reference,50072,0,1,1,1,1),
(@reference,50073,0,1,1,1,1),
(@reference,50074,0,1,1,1,1),
(@reference,50075,0,1,1,1,1),
(@reference,50170,0,1,1,1,1),
(@reference,50171,0,1,1,1,1),
(@reference,50172,0,1,1,1,1),
(@reference,50173,0,1,1,1,1),
(@reference,50174,0,1,1,1,1),
(@reference,50175,0,1,1,1,1),
(@reference,50176,0,1,1,1,1),
(@reference,50177,0,1,1,1,1),
(@reference,50184,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite)
(@entry,'50274','-37.5','1','3',1,'1'); -- Shadowfrost Shard)

-- 25 HC
SET @entry = 38785;
SET @reference = 50723;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50603,0,1,1,1,1),
(@reference,50710,0,1,1,1,1),
(@reference,50711,0,1,1,1,1),
(@reference,50712,0,1,1,1,1),
(@reference,50713,0,1,1,1,1),
(@reference,50714,0,1,1,1,1),
(@reference,50715,0,1,1,1,1),
(@reference,50716,0,1,1,1,1),
(@reference,50717,0,1,1,1,1),
(@reference,50718,0,1,1,1,1),
(@reference,50719,0,1,1,1,1),
(@reference,50720,0,1,1,1,1),
(@reference,50721,0,1,1,1,1),
(@reference,50722,0,1,1,1,1),
(@reference,50723,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','3',1,'1'); -- Shadowfrost Shard

-- Blood-Queen Lana'thel
-- 10 NH
SET @entry = 37955;
SET @reference = 51556;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51384,0,1,1,1,1),
(@reference,51385,0,1,1,1,1),
(@reference,51386,0,1,1,1,1),
(@reference,51387,0,1,1,1,1),
(@reference,51548,0,1,1,1,1),
(@reference,51550,0,1,1,1,1),
(@reference,51551,0,1,1,1,1),
(@reference,51552,0,1,1,1,1),
(@reference,51553,0,1,1,1,1),
(@reference,51554,0,1,1,1,1),
(@reference,51555,0,1,1,1,1),
(@reference,51556,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 38435;
SET @reference = 51846;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51835,0,1,1,1,1),
(@reference,51836,0,1,1,1,1),
(@reference,51837,0,1,1,1,1),
(@reference,51838,0,1,1,1,1),
(@reference,51839,0,1,1,1,1),
(@reference,51840,0,1,1,1,1),
(@reference,51841,0,1,1,1,1),
(@reference,51842,0,1,1,1,1),
(@reference,51843,0,1,1,1,1),
(@reference,51844,0,1,1,1,1),
(@reference,51845,0,1,1,1,1),
(@reference,51846,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'), -- Loot
(@entry,'2','100','1','2',-52025,'1'); -- NH Token

-- 25 NH
SET @entry = 38434;
SET @reference = 50354;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50065,0,1,1,1,1),
(@reference,50178,0,1,1,1,1),
(@reference,50180,0,1,1,1,1),
(@reference,50181,0,1,1,1,1),
(@reference,50182,0,1,1,1,1),
(@reference,50354,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'49908','100','1','3',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','4',1,'1'); -- Shadowfrost Shard

-- 25 HC
SET @entry = 38436;
SET @reference = 50729;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50724,0,1,1,1,1),
(@reference,50725,0,1,1,1,1),
(@reference,50726,0,1,1,1,1),
(@reference,50727,0,1,1,1,1),
(@reference,50728,0,1,1,1,1),
(@reference,50729,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'3','100','1','3',-52030,'1'), -- HC Token
(@entry,'49908','100','1','4',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','5',1,'1'); -- Shadowfrost Shard

-- The Lich King
-- 10 NH
SET @entry = 36597;
SET @reference = 51803;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51795,0,1,1,1,1),
(@reference,51796,0,1,1,1,1),
(@reference,51797,0,1,1,1,1),
(@reference,51798,0,1,1,1,1),
(@reference,51799,0,1,1,1,1),
(@reference,51800,0,1,1,1,1),
(@reference,51801,0,1,1,1,1),
(@reference,51802,0,1,1,1,1),
(@reference,51803,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 10 HC
SET @entry = 39167;
SET @reference = 51947;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,51315,5,1,1,1,1),
(@reference,51939,0,1,1,1,1),
(@reference,51940,0,1,1,1,1),
(@reference,51941,0,1,1,1,1),
(@reference,51942,0,1,1,1,1),
(@reference,51943,0,1,1,1,1),
(@reference,51944,0,1,1,1,1),
(@reference,51945,0,1,1,1,1),
(@reference,51946,0,1,1,1,1),
(@reference,51947,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'2'); -- Loot

-- 25 NH
SET @entry = 39166;
SET @reference = 50429;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,49981,0,1,1,1,1),
(@reference,49997,0,1,1,1,1),
(@reference,50012,0,1,1,1,1),
(@reference,50070,0,1,1,1,1),
(@reference,50425,0,1,1,1,1),
(@reference,50426,0,1,1,1,1),
(@reference,50427,0,1,1,1,1),
(@reference,50428,0,1,1,1,1),
(@reference,50429,0,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'49908','100','1','2',1,'1'), -- Primordial Saronite
(@entry,'50274','-37.5','1','3',1,'1'); -- Shadowfrost Shard

-- 25 HC
SET @entry = 39168;
SET @reference = 51315;
DELETE FROM `creature_loot_template` WHERE `entry` = @entry;

replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@reference,50730,0,1,1,1,1),
(@reference,50731,0,1,1,1,1),
(@reference,50732,0,1,1,1,1),
(@reference,50733,0,1,1,1,1),
(@reference,50734,0,1,1,1,1),
(@reference,50735,0,1,1,1,1),
(@reference,50736,0,1,1,1,1),
(@reference,50737,0,1,1,1,1),
(@reference,50738,0,1,1,1,1),
(@reference,50818,10,1,1,1,1),
(@reference,51315,5,1,1,1,1);

insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(@entry,'1','100','1','1',-@reference,'3'), -- Loot
(@entry,'2','100','1','2',-52025,'2'), -- NH Token
(@entry,'3','100','1','3',-52030,'1'), -- HC Token
(@entry,'49908','100','1','4',1,'1'), -- Primordial Saronite
(@entry,'50274','-75','1','5',1,'1'); -- Shadowfrost Shard


