/* 
* 2014_02_07_questchains_azshara.sql 
*/ 
-- questchains Azshara 

UPDATE `quest_template` SET `PrevQuestId` = 0, `ExclusiveGroup` = 0 WHERE `id` = 28496; 
 
/* 
* 2014_02_12_quest_runaway_shredder.sql 
*/ 
-- runaway shredder (ID: 14129)

DELETE FROM `conditions` WHERE `SourceEntry` = 14129 AND `ConditionValue1` = 25275; 
 
/* 
* 2014_02_15_quest_arborcide.sql 
*/ 
-- quest Arborcide (ID: 14155)

DELETE FROM `creature_questrelation` WHERE `id` = 35086 AND `quest` = 14155;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(35086, 14155);

DELETE FROM `creature_involvedrelation` WHERE `id` = 35086 AND `quest` = 14155;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(35086, 14155);

UPDATE `creature_template` SET `faction_h` = 14, `faction_a` = 14 WHERE `entry` = 35198;
UPDATE `creature_template` SET `Health_mod` = 25 WHERE `entry` = 35129; 
 
/* 
* 2014_02_15_quest_defend_the_gates.sql 
*/ 
-- quest Defend the Gates

UPDATE `quest_template` SET `flags` = 8, `NextQuestId` = 14155 WHERE `id` = 14146;

DELETE FROM `creature_involvedrelation` WHERE `id` = 35086 AND `quest` = 14146;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(35086, 14146); 
 
/* 
* 2014_02_15_quest_the_captains_logs.sql 
*/ 
-- quest the captains logs (ID: 14134)

-- Updating shredder and guardians of orgrimmar
UPDATE `creature_template` SET `type_flags` = 393256, `dynamicflags` = 0, `npcflag` = 0, unit_flags = 134217728, `VehicleId` = 460 WHERE `entry` = 35129;
UPDATE `creature_template` SET `unit_flags` = 512 WHERE `entry` IN (35190, 35194, 35177);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 35086;

-- Updating Quest
UPDATE `quest_template` SET `flags` = 8 WHERE `id` = 14134;

-- Adding npc_spellclick_spells
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 35129 AND `spell_id` = 62309;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(35129, 62309, 1, 0);

-- Adding SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 60011 AND `id` IN (0,1);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35086;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(60011, 0, 0, 13, 100, 1, 1, 1, 66795, 0, 56, 47050, 1, 0, 18, 100, 0, 'On victim casting - target player - give questcredit'),
(60011, 0, 1, 13, 100, 1, 1, 1, 66795, 0, 37, 0, 0, 0, 1, 0, 0, 'On victim casting - kill - self'),
(35086, 0, 0, 19, 100, 1, 14134, 0, 0, 0, 12, 35129, 6, 2000, 1, 0, 0, 'On quest accept - summon vehicle');

-- Adding Trigger creature
-- DELETE FROM `creature` WHERE `id` = 60011;
DELETE FROM `creature_template` WHERE `entry` = 60011;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`) VALUES 
(60011, 4449, 4449, 4449, 4449, 'The captains Logs - Trigger', 60, 60, 14, 14, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI');

-- Spawning Trigger
DELETE FROM `creature` WHERE `guid` = 140755;
DELETE FROM `creature` WHERE `id` = 60011;
DELETE FROM `creature` WHERE `id` = 35129;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('60011','1','16','4745','1','1','0','0','2643.68','-4872.39','128.902','0.0334463','300','1','0','1','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2651.94','-4875.71','127.186','5.47333','300','1','0','1','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2655.62','-4880.98','126.418','2.62033','300','1','0','1','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2708.33','-4878.96','117.345','5.83768','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2701.67','-4881.65','117.164','0.135688','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2701.91','-4906.25','120.318','4.30223','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2701.48','-4913.72','115.021','5.64939','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2716.03','-4906.6','114.511','2.88071','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2678.17','-4942.75','120.645','1.97973','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2666.92','-4942.24','122.909','3.40623','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2641.17','-4924.4','127.263','1.88256','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2596.62','-4927.64','135.35','3.25308','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2600.03','-4940.47','132.254','4.79971','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2719.92','-4843.64','122.644','0.578191','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2723.68','-4835.64','121.534','3.91289','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2729','-4843.97','122.966','3.81078','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4744','1','1','0','0','2749.15','-4847.81','117.684','5.95099','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2778.76','-4943.98','117.406','5.95099','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2777.27','-4952.96','117.937','4.52245','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2750.56','-4996.68','121.624','2.58252','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2748.63','-4988.08','120.715','4.62455','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2747.93','-4977.98','119.344','1.96178','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2690.18','-4995.66','122.565','2.69248','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','1234','1','1','0','0','2684.08','-4996.34','121.398','2.54718','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2657.79','-4981.13','122.01','0.725057','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2603.77','-4841.31','146.94','2.89579','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2607.83','-4832.36','140.953','2.47953','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2605.46','-4812.89','144.22','1.53954','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2617.28','-4810.21','139.262','2.52929','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2601.47','-4798.5','144.027','5.67481','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2641.25','-4781.16','138.486','5.80834','300','0','0','3524','0','0','0','0','0'),
('60011','1','16','4745','1','1','0','0','2656.07','-4796.36','138.288','5.46669','300','0','0','3524','0','0','0','0','0'),
('35129','1','16','4745','1','65535','0','0','2546.34','-4868.78','146.283','0.754566','300','0','0','371','0','0','16777216','0','0'); 
 
/* 
* 2014_02_21_quest_refleshifcation.sql 
*/ 
-- quest refleshification (ID: 14194)
-- Updating npc
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags` = 0 WHERE `entry` = 35257;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35257;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35257, 0, 0, 8, 100, 1, 67362, 1, 1, 1, 33, 35375, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On spell hit - give questcredit'),
(35257, 0, 1, 8, 100, 1, 67362, 1, 1, 1, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spell hit - despawn'); 
 
/* 
* 2014_03_08_questchains_azshara.sql 
*/ 
-- questchains Azshara #3

UPDATE `quest_template` SET `PrevQuestId` = 14194 WHERE `id` = 14468;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(36749,1,16,1233,1,65535,0,0,3249.67,-4989.19,131.721,0.365179,300,0,0,328,0,0,0,0,0);

UPDATE `creature_template` SET `faction_h` = 2160, `faction_a` = 2160 WHERE `entry` = 36744; 
 
/* 
* 2014_03_08_quest_hand_me_downs.sql 
*/ 
-- quest Hand-Me-Downs (ID: 14469)
-- update creature
UPDATE `creature_template` SET `npcflag` = 1, `AIName` = 'SmartAI' WHERE `entry` = 36756;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 36756;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(36756, 0, 0, 64, 100, 1, 0, 0, 0, 0, 56, 49599, 1, 18, 100, 0, 'On gossip hello - target player - give questcredit'),
(36756, 0, 1, 64, 100, 1, 0, 0, 0, 0, 37, 0, 0, 1, 0, 0, 'On gossip hello - self - force despawn');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 36756;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,36756,0,0,9,0,14469,0,0,0,0,0,'','Need to be player to trigger event'),
(22,2,36756,0,0,9,0,14469,0,0,0,0,0,'','Need to be player to trigger event'); 
 
/* 
* 2014_03_13_quest_survey_the_lakeshore.sql 
*/ 
-- quest Survey the Lakeshore (ID: 14202)
-- 45423/4/5
-- 195461
-- Update G-object
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` IN (195461, 195462, 195463);
UPDATE `gameobject_template` SET `type` = 10, `AIName` = 'SmartGameObjectAI', `data19` = 45423 WHERE `entry` = 195461;
DELETE FROM `gameobject_template` WHERE `entry` IN (195462, 195463);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`) VALUES 
(195462,10,5454,'Surveyor\'s Pole','','','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,14202,0,0,0,0,0,0,0,0,0,0,0,0,0,45423,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI',''),
(195463,10,5454,'Surveyor\'s Pole','','','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,14202,0,0,0,0,0,0,0,0,0,0,0,0,0,45423,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI','');

UPDATE `gameobject` SET `id` = 195463 WHERE `guid` = 45423;
UPDATE `gameobject` SET `id` = 195462 WHERE `guid` = 45424;

-- Create gossip_menu
DELETE FROM `gossip_menu` WHERE `entry` = 45423;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(45423, 21);

-- create gossip_menu_options
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 45423;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (195461, 195462, 195463);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(195463, 1, 0, 64, 100, 0, 45423, 0, 0, 0, 33, 35487, 0, 18, 100, 0, 'On gossip select - target player - give questcredit'),
(195463, 1, 1, 64, 100, 0, 45423, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(195462, 1, 0, 64, 100, 0, 45423, 0, 0, 0, 33, 35488, 0, 18, 100, 0, 'On gossip select - target player - give questcredit'),
(195462, 1, 1, 64, 100, 0, 45423, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(195461, 1, 0, 64, 100, 0, 45423, 0, 0, 0, 33, 35489, 0, 18, 100, 0, 'On gossip select - target player - give questcredit'),
(195461, 1, 1, 64, 100, 0, 45423, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'); 
 
/* 
* 2014_04_19_befriending_giants.sql 
*/ 
-- Befriending Giants (ID: 14377) // Azsharite Experiment Number One (ID: 14385) // Azsharite Experiment Number Two (ID: 14388)
-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (10780, 10797);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 16 AND `SourceEntry` = 36437;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,10780,0,0,0,9,0,14377,0,0,0,0,0,'','Show gossip if player is on quest'),
(15,10780,0,0,0,2,0,49211,1,0,0,0,0,'','Show gossip if player has item'),
(15,10780,1,0,0,9,0,14385,0,0,0,0,0,'','Show gossip if player is on quest'),
(15,10780,2,0,0,9,0,14388,0,0,0,0,0,'','Show gossip if player is on quest'),
(15,10780,2,0,0,1,0,68710,1,0,0,0,0,'','Show gossip if player has aura'),
(15,10797,0,0,0,9,0,14388,0,0,0,0,0,'','Show gossip if player is on quest'),
(15,10797,0,0,0,1,0,68710,1,0,1,0,0,'','Show gossip if player has aura'),
(16,0,36437,0,0,4,0,16,0,0,0,0,0,'','Vehicle bound on zone Azshara');

-- gossip stuff
DELETE FROM `gossip_menu` WHERE `entry` IN (10781, 10782, 10783, 10784, 10785, 10786, 10787, 10788);
INSERT INTO `gossip_menu` VALUES
(10781, 20000),
(10782, 20001),
(10783, 20002),
(10784, 20003),
(10785, 20004),
(10786, 20005),
(10787, 20006),
(10788, 20007);

DELETE FROM `npc_text` WHERE `id` IN (20000, 20001, 20002, 20003, 20004, 20005, 20006, 20007);
INSERT INTO `npc_text` (`id`, `text0_0`, `em0_0`) VALUES
(20000, "Ha - harrrum! Food? We don't eat squishlings, friend, not unless they aggravate us. We eat rocks and stones and earth. Though I sometimes find the crunch of bones makes a delightful seasoning. ", 7),
(20001, 'Azsharite? You soft ones come up with new names for everything. What is this "azsharite?"', 0),
(20002, 'Oh - hah! Harrooo - Ha harum! Little friend, I am sorry. I suppose my kind does not pick up after ourselves as you do. ', 11),
(20003, 'It comes from - harum - what is your word for it? Harrrm. Let us say that my kind does not have bathrooms. Do you understand? ', 0),
(20004, "It would seem so. You and your friends are welcome to as much as you can find. I suppose it's very potent. We don't need to go that often. ", 0),
(20005, "We don't live as quickly as you do, my mushy friend. A healthy giant eats three square meals a decade, although I am known to indulge in a snack every couple of years. We'll go to the bathroom every 15 to 25 years... barring any tummy trouble. ", 0),
(20006, "Haaarrum! I have never had my personal habits scrutinized so. Your kind never ceases to surprise me. Farewell, friend, and good luck with ... whatever it is you are on about. ", 0),
(20007, "I suspect your little green friends are putting you up to no good. Please explain to them that we giants are not to be toyed with.", 0);


DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10780, 10781, 10782, 10783, 10784, 10785, 10786) AND `id` = 0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
(10780, 0, "I brought you something to eat.", 1, 1, 10781),
(10781, 0, "Do you know anything about azsharite?", 1, 1, 10782),
(10782, 0, "Those piles of blue-ish crystals we find on the gorund.", 1, 1, 10783),
(10783, 0, "So the giants have been dropping the azsharite? But where does it come from?", 1, 1, 10784),
(10784, 0, "It's ... your droppings!? And the goblins have been running around scooping it up?", 1, 1, 10785),
(10785, 0, 'How often do you, uh, "go?"', 1, 1, 10786),
(10786, 0, "15 to 25 years? Assistant Greely isn't going to want to hear that!", 1, 1, 10787);

UPDATE `gossip_menu_option` SET `id` = 1, `action_menu_id` = 10788 WHERE (`menu_id` = 10780 AND `option_text` LIKE 'Here%');
UPDATE `gossip_menu_option` SET `id` = 2 WHERE (`menu_id` = 10780 AND `option_text` LIKE 'SQUE%');

-- creature_text
DELETE FROM `creature_text` WHERE `entry` IN (36297, 36077);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(36077, 0, 0, "Move fast! You'll revert to regular-size in just a couple of minutes.", 12, 0, 100, 4, 0, 0, 'Azsharite Experiment Number Two - Greely'),
(36297, 0, 0, "EeeEEEEEEKK!", 12, 0, 100, 4, 0, 0, 'Azsharite Experiment Number Two - Gormungan'),
(36297, 1, 0, "Oh, it was just you. Please don't scare me like that.", 12, 0, 100, 4, 0, 0, 'Azsharite Experiment Number Two - Gormungan');

-- npc spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 36437;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(36437,80804,1,0);

UPDATE `creature_template` SET `spell4` = 68728 WHERE `entry` = 36437;

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36297, 36077);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36297, 36077);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36297, 0, 0, 1, 62, 100, 0, 10786, 0, 0, 0, 33, 36333, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select give questcredit'),
(36297, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 57, 49211, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'Linked with previous event - remove item'),
(36297, 0, 2, 0, 62, 100, 0, 10780, 1, 0, 0, 33, 36420, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select give questcredit'),
(36297, 0, 3, 0, 62, 100, 0, 10780, 2, 0, 0, 33, 36438, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select give questcredit'),
(36297, 0, 4, 0, 62, 100, 0, 10780, 2, 0, 0, 11, 84067, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select knock player back'),
(36297, 0, 5, 0, 62, 100, 0, 10780, 2, 0, 0, 28, 68710, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select remove aura'),
(36297, 0, 6, 0, 62, 100, 0, 10780, 2, 0, 0, 51, 0, 0, 0, 0, 0, 0, 11, 36437, 30, 0, 0, 0, 0, 'On gossip select kill Rocketway Rat'),
(36297, 0, 7, 0, 62, 100, 0, 10780, 2, 0, 0, 1, 0, 1800, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On gossip select say'),
(36297, 0, 8, 0, 52, 100, 0, 0, 36297, 0, 0, 1, 1, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(36077, 0, 0, 1, 62, 100, 0, 10797, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On gossip select say'),
(36077, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 11, 68710, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'Linked with previous event - cast spell on player'),
(36077, 0, 2, 0, 62, 100, 0, 10797, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select close gossip');

 
 
/* 
* 2014_04_19_core_dumped.sql 
*/ 
-- Segmentation Fault: Core Dumped (ID: 14310)
-- Dummy Target Spell: 54694/56685/88529
-- getting rid of trash
DELETE FROM `creature` WHERE `id` IN (36105, 36136, 36098, 36125);

-- correcting creature
UPDATE `creature_template` SET `modelid1` = 29985, `modelid2` = 37144 WHERE `entry` = 36098;

-- creating waypoints
DELETE FROM `waypoints` WHERE `entry` = 36098;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(36098,1,2595.11,-5797.06,77.25,'Quest: Segmentation Fault: Core Dumped - 1 (Wagon)'),
(36098,2,2600.15,-5803.37,77.05,'Quest: Segmentation Fault: Core Dumped - 2 (Wagon)'),
(36098,3,2600.48,-5830.31,78,'Quest: Segmentation Fault: Core Dumped - 3 (Wagon)'),
(36098,4,2598.75,-5869.66,83.71,'Quest: Segmentation Fault: Core Dumped - 4 (Wagon)'),
(36098,5,2597.76,-5893.32,90.15,'Quest: Segmentation Fault: Core Dumped - 5 (Wagon)'),
(36098,6,2597.65,-5927.03,98.51,'Quest: Segmentation Fault: Core Dumped - 6 (Wagon)'),
(36098,7,2597.51,-5960.28,101.05,'Quest: Segmentation Fault: Core Dumped - 7 (Wagon)'),
(36098,8,2617.78,-5974.37,101.05,'Quest: Segmentation Fault: Core Dumped - 8 (Wagon)'),
(36098,9,2617.9,-6058.5,101.12,'Quest: Segmentation Fault: Core Dumped - 9 (Wagon)'),
(36098,10,2619.34,-6088.65,101.06,'Quest: Segmentation Fault: Core Dumped - 10 (Wagon)'),
(36098,11,2635.26,-6101.61,101.11,'Quest: Segmentation Fault: Core Dumped - 11 (Wagon)'),
(36098,12,2645.57,-6101.52,101.16,'Quest: Segmentation Fault: Core Dumped - 12 (Wagon)');

-- adding trigger
DELETE FROM `creature_template` WHERE `entry` = 7002;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(7002, 4449, 4449, 4449, 4449, 'Segmentation Fault: Core Dumped - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4);

DELETE FROM `creature` WHERE `id` = 7002;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('7002','1','16','4829','1','1','0','0','2549.08','-5797.02','77.2256','6.22243','300','0','0','3052','0','0','0','0','0');

-- npc spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 36098;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(36098,62309,0,0);

-- vehicle template accessory
DELETE FROM `vehicle_template_accessory` WHERE `entry` = 36098;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(36098,36105,0,0,'The core',1,200000),
(36098,36125,1,0,'Red Spinning Hazard Light',1,200000),
(36098,36125,2,0,'Red Spinning Hazard Light',1,200000),
(36098,36136,3,0,'Guy who pushes the Wagon',1,200000);

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 195683;
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 68283 AND `ElseGroup` = 2);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,195683,1,0,29,0,36098,50,0,1,0,0,'','SAI doesnt work if creature is near'),
(13,0,68283,0,2,31,0,3,36105,0,0,0,0,'','Spell implecit target Azsharite Core'),
(13,1,68283,0,2,31,0,3,36105,0,0,0,0,'','Spell implecit target Azsharite Core');

-- sai 
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 195683;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36105, 36098);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (195683, 36098, 36105);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(195683, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 12, 36098, 1, 200000, 0, 0, 0, 11, 7002, 100, 0, 0, 0, 0, 'On gossip hello summon Wagon'),
(36098, 0, 0, 0, 1, 100, 1, 1, 1, 1, 1, 53, 0, 36098, 0, 14310, 200000, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC start wp'),
(36098, 0, 1, 0, 40, 100, 1, 12, 0, 0, 0, 33, 36096, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'WP reached give questcredit'),
(36098, 0, 2, 0, 8, 100, 0, 54694, 1, 1, 1, 54, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit pause wp'),
(36105, 0, 0, 0, 23, 100, 0, 68380, 10, 1, 1, 11, 54694, 3, 0, 0, 0, 0, 11, 36098, 40, 0, 0, 0, 0, 'On having 10 stacks of Ovearheating cast dummy spell on wagon'),
(36105, 0, 1, 0, 8, 100, 0, 68283, 1, 1, 1, 28, 68380, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit remove Overheating stacks'); 
 
/* 
* 2014_04_19_nines_plan.sql 
*/ 
-- Nine's Plan (ID: 14408)
-- getting rid of trash
DELETE FROM `creature` WHERE `id` IN (36156, 36157);

-- trigger npc
DELETE FROM `creature_template` WHERE `entry` = 7003;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(7003, 4449, 4449, 4449, 4449, "Nine's Plan - Trigger", 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4);

DELETE FROM `creature` WHERE `id` = 7003;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('7003','1','16','4829','1','1','0','0','2579.17','-5909.22','96.6795','0.12188','300','0','0','3052','0','0','0','0','0');

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 36472;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 10801;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,36472,0,0,29,0,36156,50,0,1,0,0,'','SAI doesnt work if creature is near'),
(15,10801,0,0,0,9,0,14408,0,0,0,0,0,'','Show gossip if player is on quest');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 36472;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 36472;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36472, 0, 0, 1, 62, 100, 0, 10801, 0, 0, 0, 12, 36156, 1, 120000, 0, 0, 0, 11, 7003, 100, 0, 0, 0, 0, 'On gossip select summon Mutant Goblin'),
(36472, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 33, 52041, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'Linked with previous event - give questcredit'); 
 
/* 
* 2014_04_19_quest_dozercism.sql 
*/ 
-- quest dozercism (ID: 14423)
-- Dummy Target Spell: 54694/56685/88529
-- Cleaning up
DELETE FROM `creature` WHERE `id` = 36552;
UPDATE `creature_template` SET `speed_walk` = 3, `speed_run` = 3, `unit_flags` = 262656 WHERE `entry` = 35526;
UPDATE `creature_template` SET `faction_h` = 35, `faction_a` = 35 WHERE `entry` = 42577;

-- adding parachute aura
DELETE FROM `creature_template_addon` WHERE `entry` = 36552;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(36552,0,0,33554432,1,0,110660);

-- adding trigger
DELETE FROM `creature_template` WHERE `entry` IN (7000, 7001);
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(7000, 4449, 4449, 4449, 4449, 'Dozercism - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI', 4),
(7001, 4449, 4449, 4449, 4449, 'Dozercism - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 33554436, 2, 1048576, 'SmartAI', 3);

DELETE FROM `creature` WHERE `id` IN (7000, 7001);
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('7000','1','16','4830','1','1','0','0','2899.95','-5025.4','150','0.530777','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('7001','1','16','4830','1','1','0','0','2899.96','-5025.4','127.121','0.525827','300','0','0','3052','0','0','0','0','0');


-- adding sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36552, 35526, 35088);

-- creature_text
DELETE FROM `creature_text` WHERE `entry` = 36552;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(36552, 0, 0, "Praise to the Light, sister! Let's take a look here...", 12, 0, 100, 4, 0, 0, 'Dozercism - Goblin'),
(36552, 1, 0, "Well, there's your problem! You have what we call a ghost in the machine.", 12, 0, 100, 5, 0, 0, 'Dozercism - Goblin'),
(36552, 2, 0, "This calls for an old-fashioned bulldozer exorcism! Give me a hand if she gets uppity, will ya?", 12, 0, 100, 0, 0, 0, 'Dozercism - Goblin'),
(36552, 3, 0, "Whoa! We got alive one here!", 12, 0, 100, 0, 0, 0, 'Dozercism - Goblin'),
(36552, 4, 0, "I cast you out! Unclean spirit - Begone!", 12, 0, 100, 28, 0, 0, 'Dozercism - Goblin'),
(36552, 5, 0, "The power tools compel you! The power tools compel you!", 12, 0, 100, 28, 0, 0, 'Dozercism - Goblin'),
(36552, 6, 0, "Terrific! That went down nice and clean.", 12, 0, 100, 4, 0, 0, 'Dozercism - Goblin'),
(36552, 7, 0, "Let Clubnik know that the priesthood will be sending him a bill. For the Light!", 12, 0, 100, 0, 0, 0, 'Dozercism - Goblin');

-- creating waypoints
DELETE FROM `waypoints` WHERE `entry` IN (36552, 35526);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(36552,1,2905,-5029.5,127.145,'Quest: Dozercism - 1 (Goblin)');

-- npc spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 35526;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(35526,62309,0,0);

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36552, 35526, 35088, 7000, 7001);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35088, 0, 0, 0, 19, 100, 0, 14423, 0, 0, 0, 11, 56685, 1, 0, 0, 0, 0, 11, 7000, 300, 0, 0, 0, 0, 'On quest accept cast dummy spell on trigger npc'),
(7000, 0, 0, 0, 8, 100, 0, 56685, 1, 1, 1, 12, 36552, 1, 120000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit summon npc'),
(7001, 0, 0, 0, 8, 100, 1, 54694, 1, 1, 1, 11, 25824, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast spotlight'),
(7001, 0, 1, 0, 8, 100, 1, 56685, 1, 1, 1, 28, 25824, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit remove spotlight'),
(36552, 0, 0, 0, 1, 100, 1, 1, 1, 1, 1, 11, 54694, 1, 0, 0, 0, 0, 11, 7001, 100, 0, 0, 0, 0, 'On OOC cast dummy spell on trigger npc'),
(36552, 0, 1, 0, 23, 100, 1, 110660, 0, 1, 1, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On aura vanish say'),
(36552, 0, 2, 0, 52, 100, 1, 0, 36552, 0, 0, 53, 1, 36552, 0, 14423, 100000, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over start wp'),
(36552, 0, 3, 0, 52, 100, 1, 0, 36552, 0, 0, 11, 56685, 1, 0, 0, 0, 0, 11, 7001, 100, 0, 0, 0, 0, 'On text over cast dummy spell on trigger npc'),
(36552, 0, 4, 0, 40, 100, 1, 1, 0, 0, 0, 66, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On wp reached set orientation'),
(36552, 0, 5, 0, 40, 100, 1, 1, 0, 0, 0, 1, 1, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On wp reached say'),
(36552, 0, 6, 0, 52, 100, 1, 1, 36552, 0, 0, 1, 2, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(36552, 0, 7, 0, 52, 100, 1, 1, 36552, 0, 0, 11, 62309, 1, 0, 0, 0, 0, 11, 35526, 100, 0, 0, 0, 0, 'On text over enter vehicle'),
(36552, 0, 8, 0, 8, 100, 1, 56685, 1, 1, 1, 1, 3, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit say'),
(36552, 0, 9, 0, 52, 100, 1, 3, 36552, 0, 0, 11, 54694, 3, 0, 0, 0, 0, 11, 35526, 100, 0, 0, 0, 0, 'On text over cast dummy spell on dozer'),
(36552, 0, 10, 0, 8, 100, 1, 54694, 1, 1, 1, 1, 4, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit say'),
(36552, 0, 11, 0, 52, 100, 1, 4, 36552, 0, 0, 11, 56685, 3, 0, 0, 0, 0, 11, 35526, 100, 0, 0, 0, 0, 'On text over cast dummy spell on dozer'),
(36552, 0, 12, 0, 52, 100, 1, 4, 36552, 0, 0, 1, 5, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(36552, 0, 13, 0, 8, 100, 1, 98914, 1, 1, 1, 1, 6, 3300, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit say'),
(36552, 0, 14, 0, 52, 100, 1, 6, 36552, 0, 0, 1, 7, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(36552, 0, 15, 0, 52, 100, 1, 7, 36552, 0, 0, 41, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over despawn'),
(35526, 0, 0, 1, 27, 100, 1, 1, 1, 0, 0, 2, 1732, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On passenger set faction to unfriendly'),
(35526, 0, 1, 0, 61, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 1, 0, 0, 2881.24, -5051.24, 127.5, 3.78, 'Linked with previous event - move to pos'),
(35526, 0, 2, 0, 27, 100, 1, 1, 1, 0, 0, 11, 56685, 1, 0, 0, 0, 0, 11, 36552, 100, 0, 0, 0, 0, 'passenger boarded cast dummy spell on goblin'),
(35526, 0, 3, 0, 8, 100, 1, 54694, 1, 1, 1, 69, 2, 0, 0, 0, 0, 0, 1, 0, 0, 2912.84, -5060.74, 127.6, 5.85, 'On spellhit - move to pos'),
(35526, 0, 4, 0, 8, 100, 1, 54694, 1, 1, 1, 11, 54694, 3, 0, 0, 0, 0, 11, 36552, 100, 0, 0, 0, 0, 'On spellhit cast dummy spell on goblin'),
(35526, 0, 5, 0, 8, 100, 1, 56685, 1, 1, 1, 69, 3, 0, 0, 0, 0, 0, 1, 0, 0, 2889.11, -5026.63, 126.1, 2.16, 'On spellhit - move to pos'),
(35526, 0, 6, 0, 8, 100, 1, 56685, 1, 1, 1, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit - set faction to hostile'),
(35526, 0, 7, 0, 6, 100, 1, 0, 0, 0, 0, 11, 98914, 3, 0, 0, 0, 0, 11, 36552, 100, 0, 0, 0, 0, 'On death cast dummy spell on goblin'); 
 
/* 
* 2014_04_19_when_science_attacks.sql 
*/ 
-- When Science Attacks (ID: 14308)
-- conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 68283 AND `ElseGroup` IN (0,1));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,68283,0,0,31,0,3,36025,0,0,0,0,'','Spell implecit target secret lab fires'),
(13,1,68283,0,0,31,0,3,36025,0,0,0,0,'','Spell implecit target secret lab fires'),
(13,0,68283,0,1,31,0,3,36061,0,0,0,0,'','Spell implecit target research intern'),
(13,1,68283,0,1,31,0,3,36061,0,0,0,0,'','Spell implecit target research intern');

-- creature addon
DELETE FROM `creature_template_addon` WHERE `entry` = 36025;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(36025,0,0,0,1,0,'52855 65734 68277');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36025, 36061);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36025, 36061);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36061, 0, 0, 0, 8, 100, 1, 68283, 1, 1, 1, 33, 36061, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On spellhit give questcredit'),
(36061, 0, 1, 0, 8, 100, 1, 68283, 1, 1, 1, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit forec despawn'),
(36025, 0, 0, 0, 8, 100, 1, 68283, 1, 1, 1, 33, 36025, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On spellhit give questcredit'),
(36025, 0, 1, 0, 8, 100, 1, 68283, 1, 1, 1, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit forec despawn');
 
 
/* 
* 2014_04_20_raptor_rocket_rocket.sql 
*/ 
-- Raptor Raptor Rocket (ID: 14422)
-- Dummy Target Spell: 54694/56685/88529
-- creature
UPDATE `creature_template` SET `unit_flags` = 4, `AIName` = 'SmartAI' WHERE `entry` = 36509;

-- sai
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI', `type` = 10 WHERE `entry` = 196486;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (196486, 36509);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(196486, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 11, 54694, 3, 0, 0, 0, 0, 11, 36509, 25, 0, 0, 0, 0, 'On gossip hello cast dummy spell on raptor'),
(36509, 0, 0, 1, 8, 100, 1, 54694, 1, 1, 1, 33, 36534, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On spellhit give questcredit'),
(36509, 0, 1, 0, 61, 100, 1, 0, 0, 0, 0, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event - despawn');
 
 
/* 
* 2014_04_21_first_come_first_served.sql 
*/ 
-- First Come, First Served (ID: 24437)
-- Delete trash
DELETE FROM `gameobject` WHERE `id` = 201302;

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` IN (36951, 36952, 36953);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,36951,0,0,30,1,201302,30,0,0,0,0,'','Work if near gameobject'),
(22,1,36952,0,0,30,1,201302,30,0,0,0,0,'','Work if near gameobject'),
(22,1,36953,0,0,30,1,201302,30,0,0,0,0,'','Work if near gameobject');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36951, 36952, 36953);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36951, 36952, 36953);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36953, 0, 0, 0, 1, 100, 0, 20, 20, 20, 20, 33, 36953, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On OOC give questcredit'),
(36952, 0, 0, 0, 1, 100, 0, 20, 20, 20, 20, 33, 36952, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On OOC give questcredit'),
(36951, 0, 0, 0, 1, 100, 0, 20, 20, 20, 20, 33, 36951, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On OOC give questcredit'); 
 
/* 
* 2014_04_21_halo_dops.sql 
*/ 
-- Halo drops (ID: 24436)
-- Dummy Target Spell: 54694/56685/88529
-- Delete trash
DELETE FROM `creature` WHERE `id` = 36937;

-- creature_text
DELETE FROM `creature_text` WHERE `entry` = 36937;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(36937, 0, 0, "I've got the best heals, anywhere!", 12, 0, 100, 4, 0, 0, 'Halo drops - Goblin');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36937, 36922);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36937, 36922);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36937, 0, 0, 1, 1, 100, 1, 1, 1, 1, 1, 11, 25824, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC cast spotlight'),
(36937, 0, 1, 0, 61, 100, 1, 0, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event say'),
(36937, 0, 2, 0, 1, 100, 1, 1, 1, 1, 1, 11, 50769, 3, 0, 0, 0, 0, 11, 36922, 20, 0, 0, 0, 0, 'On OOC cast revive on wounded soldier'),
(36937, 0, 3, 0, 52, 100, 1, 0, 36937, 0, 0, 33, 36922, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On text over give questcredit'),
(36937, 0, 4, 0, 52, 100, 1, 0, 36937, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over despawn'),
(36922, 0, 0, 0, 8, 100, 1, 50769, 8, 1, 1, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit despawn');
 
 
/* 
* 2014_04_21_shore_leave.sql 
*/ 
-- shore leave (ID: 24449)
-- quest correction
UPDATE `quest_template` SET `PrevQuestId` = 14487 WHERE `id` = 24449;

-- trigger npc
DELETE FROM `creature_template` WHERE `entry` = 6991;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(6991, 4449, 4449, 4449, 4449, "shore leave - Trigger", 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4); 
 
/* 
* 2014_04_21_ticker_required.sql 
*/ 
-- Ticker Required (ID: 14485)
-- Dummy Target Spell: 54694/56685/88529
-- creature correction
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags` = 768 WHERE `entry` = 36750;

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 36750;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,36750,0,0,30,1,199333,15,0,0,0,0,'','Work if near gameobject');

-- trigger npc
DELETE FROM `creature_template` WHERE `entry` = 6990;
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(6990, 4449, 4449, 4449, 4449, "Ticker Required - Trigger", 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4);

DELETE FROM `creature` WHERE `id` = 6990;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1221','1','1','0','0','3278.78','-5256.02','90.6445','3.13356','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1221','1','1','0','0','3484.24','-5248.82','98.0026','4.64543','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1223','1','1','0','0','3448.35','-5366.34','116.837','4.03676','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1221','1','1','0','0','3608.77','-5266.1','98.2843','3.31398','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1223','1','1','0','0','3546.37','-5324.6','140.413','4.69649','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1223','1','1','0','0','3631.82','-5358.04','115.947','4.75148','300','0','0','3052','0','0','0','0','0');
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('6990','1','16','1221','1','1','0','0','3452.17','-5151.57','89.1876','5.03396','300','0','0','3052','0','0','0','0','0');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 36895;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36895, 36750, 6990);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36895, 0, 0, 0, 19, 100, 0, 14485, 0, 0, 0, 85, 69314, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On quest accept invoker summons ticker'),
(36750, 0, 0, 0, 1, 100, 0, 20, 20, 20, 20, 11, 54694, 3, 0, 0, 0, 0, 11, 6990, 20, 0, 0, 0, 0, 'On OOC cast dummy spell on trigger'),
(6990, 0, 0, 1, 8, 100, 1, 54694, 1, 1, 1, 11, 91980, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast explosion'),
(6990, 0, 1, 0, 61, 100, 1, 0, 0, 0, 0, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event - despawn'),
(6990, 0, 2, 0, 8, 100, 1, 54694, 1, 1, 1, 33, 36843, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On spellhit give questcredit'); 
 
/* 
* 2014_04_25_absorbent.sql 
*/ 
-- absorbent (ID: 14323)

UPDATE `quest_template` SET `flags` = 0 WHERE `id` = 14323; 
 
/* 
* Merge.sql 
*/ 
 
 
