-- Love is in the Air (ID: 8)
-- guidrange 1000000-1010000
-- creatures / gameobject correction
DELETE FROM `gameobject` WHERE `id` = 181086;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10976 AND `id` = 2;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (3296, 68); -- guard_generic (Dunno what its necessary for)
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` IN (201778);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (38042, 38043, 38044, 38045, 37887, 38041, 38040, 38039);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` IN (38043, 37887, 38041);

-- Stormwind / Ironforge / Exodar / Darnassus
DELETE FROM `gameobject` WHERE `guid` IN (27100, 27099, 96539, 42842);
UPDATE `creature` SET `position_x` = -8869, `position_y` = 638.5, `position_z` = 97.1, `orientation` = 0.83 WHERE `guid` = 69; -- Stormwind
UPDATE `creature` SET `position_x` = -8867.6, `position_y` = 637.1, `position_z` = 97.1, `orientation` = 0.8 WHERE `guid` = 67; -- Stormwind
UPDATE `creature` SET `position_x` = -4918.1, `position_y` = -982.3, `position_z` = 503, `orientation` = 2.2 WHERE `guid` = 89; -- Ironforge
UPDATE `creature` SET `position_x` = -4007, `position_y` = -11844.85, `position_z` = 1.45, `orientation` = 4.7 WHERE `guid` = 162141; -- Exodar
UPDATE `creature` SET `position_x` = -4005, `position_y` = -11845.3, `position_z` = 1.45, `orientation` = 4.8 WHERE `guid` = 162137; -- Exodar
UPDATE `creature` SET `position_x` = 9870.9, `position_y` = 2492.5, `position_z` = 1317.2, `orientation` = 5.9 WHERE `guid` = 127009; -- Darnassus
UPDATE `creature` SET `position_x` = 9871.4, `position_y` = 2494.5, `position_z` = 1317.2, `orientation` = 5.9 WHERE `guid` = 127012; -- Darnassus

-- Orgrimmar / Silvermoon / Thunderbluff / Undercity
DELETE FROM `gameobject` WHERE `guid` IN (42843,96540, 42844, 27101);
UPDATE `creature` SET `position_x` = 1593.34, `position_y` = -4429.06, `position_z` = 15.52, `orientation` = 1.31 WHERE `guid` = 127011; -- orgrimmar
UPDATE `creature` SET `position_x` = 1591.84, `position_y` = -4429.29, `position_z` = 15.58, `orientation` = 1.31 WHERE `guid` = 127025; -- orgrimmar
UPDATE `creature` SET `position_x` = 1780.85, `position_y` = -4508.72, `position_z` = 27.74, `orientation` = 3.45 WHERE `guid` = 127026; -- orgrimmar
UPDATE `creature` SET `position_x` = 1596.01, `position_y` = -4427.89, `position_z` = 16.3, `orientation` = 1.57 WHERE `guid` = 127014; -- orgrimmar
UPDATE `creature` SET `position_x` = 1614, `position_y` = -4390.6, `position_z` = 20.9, `orientation` = 4.2 WHERE `guid` = 127024; -- orgrimmar
UPDATE `creature` SET `position_x` = 1392.5, `position_y` = -4481.8, `position_z` = 31.3, `orientation` = 2.3 WHERE `guid` = 99823; -- orgrimmar
UPDATE `creature` SET `position_x` = 1395, `position_y` = -4490.9, `position_z` = 31.7, `orientation` = 4 WHERE `guid` = 99825; -- orgrimmar
UPDATE `creature` SET `position_x` = 1828.92, `position_y` = -4404.72, `position_z` = 103.73, `orientation` = 1.7 WHERE `guid` = 99822; -- orgrimmar
UPDATE `creature` SET `position_x` = 9610.4, `position_y` = -7182.7, `position_z` = 15.55, `orientation` = 1.7 WHERE `guid` = 162136; -- silvermoon
UPDATE `creature` SET `position_x` = 9612.5, `position_y` = -7182.44, `position_z` = 15.55, `orientation` = 1.6 WHERE `guid` = 162135; -- silvermoon
UPDATE `creature` SET `position_x` = -1218.12, `position_y` = 61.6, `position_z` = 131, `orientation` = 3.4 WHERE `guid` = 127018; -- Thunderbluff
UPDATE `creature` SET `position_x` = -1218.8, `position_y` = 63.6, `position_z` = 131, `orientation` = 3.4 WHERE `guid` = 127010; -- Thunderbluff
UPDATE `creature` SET `position_x` = -1221.6, `position_y` = 67.8, `position_z` = 131.5, `orientation` = 3.5 WHERE `guid` = 127015; -- Thunderbluff
UPDATE `creature` SET `position_x` = 1630, `position_y` = 241, `position_z` = 65.1, `orientation` = 6.2 WHERE `guid` = 70; -- Undercity
UPDATE `creature` SET `position_x` = 1630, `position_y` = 239, `position_z` = 65.1, `orientation` = 6.2 WHERE `guid` = 68; -- Undercity

DELETE FROM `creature` WHERE `guid` IN (1000000, 1000001);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(1000000, '40438','1','1637','5170','1','1','0','0','1570.59','-4385.1','16.3731','4.46702','300','0','0','2215','0','0','0','0','0'),
(1000001, '37671','1','14','4982','1','1','0','37671','1390.32','-4485.18','31.4379','2.58904','300','0','0','12600','0','0','0','0','0');

DELETE FROM `game_event_creature` WHERE `guid` IN (1000000, 1000001);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(8, 1000000),
(8, 1000001);

DELETE FROM `game_event_creature` WHERE `eventEntry` = 8 AND `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 51613);
INSERT INTO `game_event_creature` (`guid`, `eventEntry`)
SELECT 
`creature`.`guid`, 8
FROM `creature`
WHERE `id` = 51613;

-- quests
DELETE FROM `game_event_creature_quest` WHERE `id` IN (37172, 38328, 37675, 38043, 37887, 38041, 38066, 38325) AND `quest` IN (24536, 24541, 24850, 24576, 24851, 24629, 24615, 24597, 24609, 24655, 24656, 24848, 24657, 24849);
DELETE FROM `creature_questrelation` WHERE `id` IN (37172, 38328, 38043, 37887, 38041, 38066, 38325) AND `quest` IN (24536, 24541, 24850, 24576, 24851, 24615, 24597, 24609, 24655, 24656, 24848, 24657, 24849); 
INSERT INTO `creature_questrelation` VALUES
(37172, 24536),
(37172, 24541),
(37172, 24850),
(37172, 24576),
(38043, 24615),
(38041, 24609),
(37887, 24597),
(38328, 24851),
(38066, 24655),
(38066, 24656),
(38066, 24848),
(38325, 24657),
(38325, 24849);

DELETE FROM `creature_involvedrelation` WHERE `id` IN (37172, 38328, 38066, 38325) AND `quest` IN (24536, 24541, 24576, 24850, 24851, 24655, 24656, 24804, 24657, 24848, 24849);
INSERT INTO `creature_involvedrelation` VALUES
(37172, 24536),
(37172, 24541),
(37172, 24576),
(38328, 24850),
(38328, 24576),
(38328, 24851),
(38066, 24655),
(38066, 24656),
(38066, 24804),
(38066, 24657),
(38325, 24848),
(38325, 24849);

UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `id` IN (24536, 24655);
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `id` IN (24805, 24804);
UPDATE `quest_template` SET `PrevQuestId` = 24576 WHERE `id` = 28935;
UPDATE `quest_template` SET `method` = 0 WHERE `id` IN (24849, 24851); -- This quest needs a script

DELETE FROM `spell_script_names` WHERE `spell_id` = 71024;
INSERT INTO `spell_script_names` VALUES (71024, 'spell_snagglebolts_khorium_bomb');

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (37172, 38066) AND `id` IN (2,3,4,5);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3296, 68) AND `id` IN (1);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (201778, 201716, 71000, 38042, 38043, 38044, 38041, 38040, 37887, 38039);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(37172, 0, 2, 19, 100, 0, 24541, 0, 0, 0, 11, 71450, 2, 11, 3296, 50, 'On Questaccept - spellcast'),
(37172, 0, 3, 19, 100, 0, 24536, 0, 0, 0, 11, 71520, 2, 11, 3296, 50, 'On Questaccept - spellcast'),
(37172, 0, 4, 62, 100, 0, 10976, 0, 0, 0, 56, 50130, 1, 7, 0, 0, 'On gossip select - give item'),
(37172, 0, 5, 62, 100, 0, 10976, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(38066, 0, 2, 19, 100, 0, 24656, 0, 0, 0, 11, 71450, 2, 11, 3296, 50, 'On Questaccept - spellcast'),
(38066, 0, 3, 62, 100, 0, 10976, 0, 0, 0, 56, 50130, 1, 7, 0, 0, 'On gossip select - give item'),
(38066, 0, 4, 62, 100, 0, 10976, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(3296, 0, 1, 8, 100, 0, 70192, 1, 1, 1, 33, 37558, 0, 7, 0, 0, 'On spellhit - give questcredit'),
(68, 0, 1, 8, 100, 0, 70192, 1, 1, 1, 33, 37558, 0, 7, 0, 0, 'On spellhit - give questcredit'),
(201778, 1, 0, 64, 100, 0, 0, 0, 0, 0, 15, 24541, 0, 7, 0, 0, 'On gossip hello - give questcredit'),
(201778, 1, 1, 64, 100, 0, 0, 0, 0, 0, 15, 24656, 0, 7, 0, 0, 'On gossip hello - give questcredit'),
(38042, 0, 0, 62, 100, 0, 10948, 0, 0, 0, 56, 49661, 1, 7, 0, 0, 'On gossip select - give item'),
(38042, 0, 1, 62, 100, 0, 10948, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(38043, 0, 0, 62, 100, 0, 10948, 0, 0, 0, 56, 49661, 1, 7, 0, 0, 'On gossip select - give item'),
(38043, 0, 1, 62, 100, 0, 10948, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(38044, 0, 0, 62, 100, 0, 10948, 0, 0, 0, 56, 49661, 1, 7, 0, 0, 'On gossip select - give item'),
(38044, 0, 1, 62, 100, 0, 10948, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(37887, 0, 0, 62, 100, 0, 10948, 0, 0, 0, 56, 49661, 1, 7, 0, 0, 'On gossip select - give item'),
(37887, 0, 1, 62, 100, 0, 10948, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(38041, 0, 0, 62, 100, 0, 10948, 0, 0, 0, 56, 49661, 1, 7, 0, 0, 'On gossip select - give item'),
(38041, 0, 1, 62, 100, 0, 10948, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(38040, 0, 0, 62, 100, 0, 10948, 0, 0, 0, 56, 49661, 1, 7, 0, 0, 'On gossip select - give item'),
(38040, 0, 1, 62, 100, 0, 10948, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(38039, 0, 0, 62, 100, 0, 10948, 0, 0, 0, 56, 49661, 1, 7, 0, 0, 'On gossip select - give item'),
(38039, 0, 1, 62, 100, 0, 10948, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip');
--(71000, 0, 0, 60, 100, 0, 71024, 1, 1, 1, 33, 38035, 0, 18, 100, 0, 'On spellhit - give questcredit'); -- doesnt work cause 71024 is an area effect // need anoter solution

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (71024);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (10929, 10948, 10976);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,10929,0,0,0,9,0,24657,0,0,0,0,0,'','Quest needed for gossip to be shown'),
(15,10929,0,0,1,9,0,24576,0,0,0,0,0,'','Quest needed for gossip to be shown'),
(15,10948,0,0,0,2,0,49661,1,0,1,0,0,'','only show if player has not item'),
(15,10976,0,0,0,2,0,50130,1,0,1,0,0,'','only show if player has not item'),
(15,10976,0,0,0,9,0,28935,0,0,0,0,0,'','show if player is on quest'),
(15,10976,0,0,1,9,0,28934,0,0,0,0,0,'','show if player is on quest');
-- (13,1,71024,0,0,31,0,3,71000,0,0,0,0,'','spell_implecit_target Trigger NPC'); -- need another solution

-- part two
DELETE FROM `creature_questrelation` WHERE `quest` IN (24615, 24609, 24597);
INSERT INTO `creature_questrelation` VALUES
(38043, 24615), -- silvermoon
(38041, 24609), -- ironforge
(37887, 24597); -- stormwind

UPDATE `quest_template` SET `NextQuestId` = 28934, `NextQuestIdChain` = 28934 WHERE `id` = 24657;
UPDATE `quest_template` SET `PrevQuestId` = 24657 WHERE `id` = 28934;

UPDATE `quest_template` SET `NextQuestId` = 28935, `NextQuestIdChain` = 28935 WHERE `id` = 24576;
UPDATE `quest_template` SET `PrevQuestId` = 24576 WHERE `id` = 28935;


DELETE FROM `conditions` WHERE `SourceEntry` IN (44731, 22206) AND `ConditionTypeOrReference` = 12;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES
-- normals
(1, 42333, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 39679, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 40319, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
-- heroics
(1, 49624, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 39680, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 48784, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
-- Lord Godfrey normal
(1, 46964, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 46964, 22206, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
-- Lord Godfrey heroic
(1, 49712, 44731, 12, 8, 'Rose Bouquet only drops on eventstate = active'),
(1, 49712, 22206, 12, 8, 'Rose Bouquet only drops on eventstate = active');

DELETE FROM `creature_loot_template` WHERE `item` IN (44731, 22206);
INSERT INTO `creature_loot_template` VALUES
-- normals
(42333, 44731, 25, 1, 0, 1, 1),
(39679, 44731, 25, 1, 0, 1, 1),
(40319, 44731, 25, 1, 0, 1, 1),
-- heroics
(49624, 44731, 100, 1, 0, 1, 1),
(39680, 44731, 100, 1, 0, 1, 1),
(48784, 44731, 100, 1, 0, 1, 1),
-- Lord Godfrey normal
(46964, 44731, 25, 1, 1, 1, 1),
(46964, 22206, 25, 1, 1, 1, 1),
-- Lord Godfrey heroic
(49712, 44731, 100, 1, 1, 1, 1),
(49712, 22206, 100, 1, 1, 1, 1);
