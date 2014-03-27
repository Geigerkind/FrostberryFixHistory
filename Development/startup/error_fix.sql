UPDATE `gameobject_template` SET `data0` = 0 WHERE `entry` = 190949;
UPDATE `gameobject_template` SET `data5` = 0 WHERE `entry` IN (195461, 195463, 195462);

DELETE FROM `spell_bonus_data` WHERE `entry` IN (88668, 61840, 2947);

UPDATE `creature_template` SET `unit_class` = 1, `speed_walk` = 1, `speed_run` = 1.14286 WHERE `entry` IN (70031, 70033, 70041, 70043, 60011, 60016, 70035, 70040, 70049, 6040, 6041, 6042, 
6043, 60014, 70030, 70032, 70034, 70050, 70048, 70047, 70046, 70045, 70044, 70042);
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (920001, 35544, 208880, 5, 203226);
UPDATE `creature_template` SET `speed_walk` = 1, `speed_run` = 1.14286 WHERE `entry` IN (49863,24640, 49862); 
UPDATE `creature_template` SET `speed_walk` = 1 WHERE `entry` IN (30337);

UPDATE `creature_template` SET `equipment_id` = 0 WHERE `entry` IN (1011, 2202, 100012, 45261, 3680802, 46951, 47038, 52170, 52642, 52643, 140280, 59822, 46593, 40213, 32639, 32638, 100012, 16215);
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` IN (46593, 40213, 32639, 32638, 100012, 16215);

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (59826, 59812, 59818, 59814, 59828, 59834, 59820, 59822, 59824, 59832, 59816, 59830, 59810, 59836, 59840, 59838, 59804, 59808, 59802, 59806);

UPDATE `creature_template` SET `npcflag` = 16777216 WHERE `entry` IN (48913, 48804, 48803);

UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 15491;

UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` IN (46419, 50097, 50107, 50117, 208880, 203226);

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (49237, 49238, 49239);

UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` IN (48941, 48936, 48940, 48943, 48944);

UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` IN (45267, 8582, 33837, 17591, 49580);

DELETE FROM `creature_addon` WHERE `guid` IN (58163, 
58452, 
153594, 
119182, 
100323, 
100305, 
56138, 
48329,
48301,
47731,
47551,
47411,
47357,
47243,
47025,
46985,
46806,
33484,
33514,
33550,
33624,
33709,
33772,
33886,
33935,
34081,
34097,
34153,
34343,
34379,
34497,
34583,
34608,
34798,
34843,
34856,
34905,
34946,
34982,
35068,
35193,
35257,
35486,
35521,
35563,
72605,
71917,
71710,
33221,
33179,
256650
);
UPDATE `creature_addon` SET `auras` = '' WHERE `guid` IN (53530, 53846, 54187, 56331);

UPDATE `creature_template` SET `npcflag` = 4194306 WHERE `entry` IN (13616,
13617,
14741,
26377,
26504,
26944,
22551,
22577);

UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` IN (35382,
43589,
43778,
47162,
47296,
47626,
47739);

DELETE FROM `creature_questrelation` WHERE `id` IN (35382,
43589,
43778,
47162,
47296,
47626,
47739);

UPDATE `creature_template` SET `npcflag` = 4194306 WHERE `entry` IN (22551, 22577, 31991, 32105, 37310, 37426);

DELETE FROM `creature_questrelation` WHERE `quest` = 28557;

DELETE FROM `creature_involvedrelation` WHERE `id` = 739 AND `quest` IN (36734, 26733, 26734);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(739, 26733),
(739, 26734);

UPDATE `creature_involvedrelation` SET `id` = 3442 WHERE `quest` IN (29021, 29022, 29023);

DELETE FROM `creature_questrelation` WHERE `quest` IN (27790, 27850);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(46612, 27790),
(46889, 27850);

UPDATE `gameobject` SET `spawnMask` = 1 WHERE `id` IN (301079, 205877, 205876, 301072);

UPDATE `creature` SET `phaseMask` = 1 WHERE `id` IN (42844, 41379, 41270, 320000, 920001);

UPDATE `creature` SET `spawnMask` = 1 WHERE `guid` IN (902047, 900140, 899069);

DELETE FROM `creature` WHERE `guid` IN (256649, 256650) AND `id` IN (38120, 36471);

UPDATE `gameobject_template` SET `displayId` = 299 WHERE `entry` IN (300148, 185879);

DELETE FROM `creature_addon` WHERE `guid` = 256650;

UPDATE `creature` SET `spawndist` = 0 WHERE `id` = 60011;

UPDATE `quest_template` SET `RewardItemId1` = 0, `RewardItemCount1` = 0 WHERE `id` = 7061;

UPDATE `quest_template` SET `SpecialFlags` = 3 WHERE `id` IN (300000, 300001, 300002, 300003, 300004);
UPDATE `quest_template` SET `SourceItemId` = 300000, `SourceItemCount` = 1, `RequiredSourceItemId1` = 300000, `RequiredSourceItemCount1` = 1, `RewardTitleId` = 0 WHERE `id` = 300000;
UPDATE `quest_template` SET `SourceItemId` = 300001, `SourceItemCount` = 1, `RequiredSourceItemId1` = 300001, `RequiredSourceItemCount1` = 1 WHERE `id` = 300001;
UPDATE `quest_template` SET `SourceItemId` = 300002, `SourceItemCount` = 1, `RequiredSourceItemId1` = 300002, `RequiredSourceItemCount1` = 1, `ObjectiveText1` = 'Duelist' WHERE `id` = 300002;
UPDATE `quest_template` SET `SourceItemId` = 300003, `SourceItemCount` = 1, `RequiredSourceItemId1` = 300003, `RequiredSourceItemCount1` = 1, `ObjectiveText1` = 'Rival' WHERE `id` = 300003;
UPDATE `quest_template` SET `SourceItemId` = 300004, `SourceItemCount` = 1, `RequiredSourceItemId1` = 300004, `RequiredSourceItemCount1` = 1, `ObjectiveText1` = 'Challenger' WHERE `id` = 300004;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0 WHERE `id` IN (300000, 300001, 300002, 300003, 300004);

UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 1 WHERE `id` IN (13886, 29328, 29327, 25045, 27886, 25479, 25481, 25551, 26622, 27060, 27468, 27526, 27693, 27778, 27828, 27834, 27835, 27934, 28052, 28202, 28203, 28204, 28205);
UPDATE `quest_template` SET `RequiredNpcOrGoCount2` = 1 WHERE `id` IN (29328, 25045, 27060, 27468, 27828, 27834, 27835);
UPDATE `quest_template` SET `RequiredNpcOrGoCount3` = 1 WHERE `id` IN (28170);

UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 7 WHERE `id` IN (27990);
UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 5 WHERE `id` IN (25050, 28222);
UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 8 WHERE `id` IN (28758);
UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 10 WHERE `id` IN (25315);
UPDATE `quest_template` SET `RequiredItemCount1` = 1 WHERE `id` IN (25428);
UPDATE `quest_template` SET `RequiredItemCount2` = 1 WHERE `id` IN (25428);
UPDATE `quest_template` SET `RequiredItemCount1` = 8 WHERE `id` IN (26325, 26746);
UPDATE `quest_template` SET `SourceItemCount` = 1 WHERE `id` IN (26519);

UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 633;
DELETE FROM `creature_questrelation` WHERE `quest` IN (29022, 29023, 29024);

DELETE FROM `creature_involvedrelation` WHERE `id` = 42544;
DELETE FROM `creature_involvedrelation` WHERE `id` = 49408;

DELETE FROM `npc_trainer` WHERE `entry` = 3703;

DELETE FROM `npc_trainer` WHERE `entry` IN (6387, 7232);
UPDATE `creature_template` SET `npcflag` = 147 WHERE `entry` = 31247;

DELETE FROM `npc_vendor` WHERE `entry` IN (3132, 3109);

UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85 WHERE `entry` IN (44622, 44623, 44624, 44625);



DELETE FROM `pool_template` WHERE `entry` = 14352;
INSERT INTO `pool_template` VALUES
(14352, 15, 'Salvageable Metal (A)');

DELETE FROM `pool_template` WHERE `entry` = 14355;
INSERT INTO `pool_template` VALUES
(14355, 34, 'Zeppelin Debris');