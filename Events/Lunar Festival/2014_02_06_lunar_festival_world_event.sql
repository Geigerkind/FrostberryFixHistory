-- Mondfest Creatures Elder
-- youtube.com/watch?v=2VkyLJpSyZA

-- Gossip texte Uldum/Nightelf: 52210; Dwarf: 7933
DELETE FROM `npc_text` WHERE (`id` = 52210 AND `text0_0` = 'At the dawn of the year, we elders visit briefly to offer counsel to the living and welcome those who have joined the ancestors.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52210, 'At the dawn of the year, we elders visit briefly to offer counsel to the living and welcome those who have joined the ancestors.', 'At the dawn of the year, we elders visit briefly to offer counsel to the living and welcome those who have joined the ancestors.');
-- Where is?? Npc_text
-- Sekhemi
DELETE FROM `npc_text` WHERE (`id` = 52211 AND `text0_0` = 'Elder Sekhemi can be found in the Ruins of Ammon in Uldum.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52211, 'Elder Sekhemi can be found in the Ruins of Ammon in Uldum.', 'Elder Sekhemi can be found in the Ruins of Ammon in Uldum.');
-- Menkhaf
DELETE FROM `npc_text` WHERE (`id` = 52212 AND `text0_0` = 'Elder Menkhaf can be found near Khartut´s Tomb in Uldum.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52212, 'Elder Menkhaf can be found near Khartut´s Tomb in Uldum.', 'Elder Menkhaf can be found near Khartut´s Tomb in Uldum.');
-- Evershade
DELETE FROM `npc_text` WHERE (`id` = 52213 AND `text0_0` = 'Elder Evershade can be found in Nordrassil in Mount Hyjal.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52213, 'Elder Evershade can be found in Nordrassil in Mount Hyjal.', 'Elder Evershade can be found in Nordrassil in Mount Hyjal.');
-- Windsong
DELETE FROM `npc_text` WHERE (`id` = 52214 AND `text0_0` = 'Elder Windsong can be found at the Sanctuary of Malorne in Mount Hyjal.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52214, 'Elder Windsong can be found at the Sanctuary of Malorne in Mount Hyjal.', 'Elder Windsong can be found at the Sanctuary of Malorne in Mount Hyjal.');
-- Stonebrand
DELETE FROM `npc_text` WHERE (`id` = 52215 AND `text0_0` = 'Elder Stonebrand can be found at the Temple of Earth in Deepholme.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52215, 'Elder Stonebrand can be found at the Temple of Earth in Deepholme.', 'Elder Stonebrand can be found at the Temple of Earth in Deepholme.');
-- Firebeard
DELETE FROM `npc_text` WHERE (`id` = 52216 AND `text0_0` = 'Elder Firebeard can be found within Dunwald Ruins in the Dunwald Town Square in Twilight Highlands.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52216, 'Elder Firebeard can be found within Dunwald Ruins in the Dunwald Town Square in Twilight Highlands.', 'Elder Firebeard can be found within Dunwald Ruins in the Dunwald Town Square in Twilight Highlands.');
-- Moonlance
DELETE FROM `npc_text` WHERE (`id` = 52217 AND `text0_0` = 'Elder Moonlance can be found within Biel`aran Ridge in Vashj`ir.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52217, 'Elder Moonlance can be found within Biel`aran Ridge in Vashj`ir.', 'Elder Moonlance can be found within Biel`aran Ridge in Vashj`ir.');
-- Darkfeather
DELETE FROM `npc_text` WHERE (`id` = 52218 AND `text0_0` = 'Elder Darkfeather can be found within Thundermar Ruins in Twilight Highlands.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52218, 'Elder Darkfeather can be found within Thundermar Ruins in Twilight Highlands.', 'Elder Darkfeather can be found within Thundermar Ruins in Twilight Highlands.');
-- Deepforge
DELETE FROM `npc_text` WHERE (`id` = 52219 AND `text0_0` = 'Elder Deepforge can be found within Stonehearth in Deepholme.');
INSERT INTO `npc_text` (`id`,`text0_0`,`text0_1`)
VALUES (52219, 'Elder Deepforge can be found within Stonehearth in Deepholme.', 'Elder Deepforge can be found within Stonehearth in Deepholme.');


-- New gossip_menu
-- Uldum Menkhaf
DELETE FROM `gossip_menu` WHERE (`entry` = 22000 AND `text_id` = 52210);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22000, 52210);
-- Uldum Sekhemi
DELETE FROM `gossip_menu` WHERE (`entry` = 22014 AND `text_id` = 52210);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22014, 52210);
-- Hyjal Windsong
DELETE FROM `gossip_menu` WHERE (`entry` = 22010 AND `text_id` = 52210);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22010, 52210);
-- Hyjal Evershade
DELETE FROM `gossip_menu` WHERE (`entry` = 22015 AND `text_id` = 52210);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22015, 52210);
-- Deepholme Deepforge
DELETE FROM `gossip_menu` WHERE (`entry` = 22011 AND `text_id` = 7933);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22011, 7933);
-- Deepholme Stonebrand
DELETE FROM `gossip_menu` WHERE (`entry` = 22016 AND `text_id` = 7933);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22016, 7933);
-- Twilight Highlands Firebeard
DELETE FROM `gossip_menu` WHERE (`entry` = 22012 AND `text_id` = 7933);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22012, 7933);
-- Twilight Highlands Darkfeather
DELETE FROM `gossip_menu` WHERE (`entry` = 22017 AND `text_id` = 7933);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22017, 7933);
-- Vashj'ir, Moonlance
DELETE FROM `gossip_menu` WHERE (`entry` = 22013 AND `text_id` = 52210);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22013, 52210);

-- Where is Sekhemi
DELETE FROM `gossip_menu` WHERE (`entry` = 22001 AND `text_id` = 52211);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22001, 52211);
-- Where is Menkhaf
DELETE FROM `gossip_menu` WHERE (`entry` = 22002 AND `text_id` = 52212);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22002, 52212);
-- Where is Evershade
DELETE FROM `gossip_menu` WHERE (`entry` = 22003 AND `text_id` = 52213);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22003, 52213);
-- Where is Windsong
DELETE FROM `gossip_menu` WHERE (`entry` = 22004 AND `text_id` = 52214);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22004, 52214);
-- Where is Stonebrand
DELETE FROM `gossip_menu` WHERE (`entry` = 22005 AND `text_id` = 52215);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22005, 52215);
-- Where is Firebeard
DELETE FROM `gossip_menu` WHERE (`entry` = 22006 AND `text_id` = 52216);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22006, 52216);
-- Where is Moonlance
DELETE FROM `gossip_menu` WHERE (`entry` = 22007 AND `text_id` = 52217);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22007, 52217);
-- Where is Darkfeather
DELETE FROM `gossip_menu` WHERE (`entry` = 22008 AND `text_id` = 52218);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22008, 52218);
-- Where is Deepforge
DELETE FROM `gossip_menu` WHERE (`entry` = 22009 AND `text_id` = 52219);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES (22009, 52219);


-- New gossip_menu_option (Elder ... can be found...)
-- Menkhaf
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22000 AND `action_menu_id` = 22001 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22000,0,0,'Where is Elder Sekhemi?',1,1,22001);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22000 AND `action_menu_id` = 22004 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22000,1,0,'Where is Elder Windsong?',1,1,22004);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22000 AND `action_menu_id` = 22007 AND `id` = 2);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22000,2,0,'Where is Elder Moonlance?',1,1,22007);
-- Sekhemi
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22014 AND `action_menu_id` = 22001 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22014,0,0,'Where is Elder Sekhemi?',1,1,22001);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22014 AND `action_menu_id` = 22004 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22014,1,0,'Where is Elder Windsong?',1,1,22004);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22014 AND `action_menu_id` = 22007 AND `id` = 2);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22014,2,0,'Where is Elder Moonlance?',1,1,22007);
-- Windsong
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22010 AND `action_menu_id` = 22000 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22010,0,0,'Where is Elder Menkhaf?',1,1,22000);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22010 AND `action_menu_id` = 22003 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22010,1,0,'Where is Elder Evershade?',1,1,22003);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22010 AND `action_menu_id` = 22007 AND `id` = 2);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22010,2,0,'Where is Elder Moonlance?',1,1,22007);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22010 AND `action_menu_id` = 22009 AND `id` = 3);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22010,3,0,'Where is Elder Deepforge?',1,1,22009);
-- Evershade
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22015 AND `action_menu_id` = 22000 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22015,0,0,'Where is Elder Menkhaf?',1,1,22000);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22015 AND `action_menu_id` = 22004 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22015,1,0,'Where is Elder Windsong?',1,1,22004);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22015 AND `action_menu_id` = 22007 AND `id` = 2);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22015,2,0,'Where is Elder Moonlance?',1,1,22007);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22015 AND `action_menu_id` = 22009 AND `id` = 3);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22015,3,0,'Where is Elder Deepforge?',1,1,22009);
-- Deepforge
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22016 AND `action_menu_id` = 22005 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22016,0,0,'Where is Elder Stonebrand?',1,1,22005);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22016 AND `action_menu_id` = 22004 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22016,1,0,'Where is Elder Windsong?',1,1,22004);
-- Stonebrand
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22011 AND `action_menu_id` = 22009 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22011,0,0,'Where is Elder Deepforge?',1,1,22009);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22011 AND `action_menu_id` = 22004 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22011,1,0,'Where is Elder Windsong?',1,1,22004);
-- Moonlance
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22013 AND `action_menu_id` = 22003 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22013,0,0,'Where is Elder Evershade?',1,1,22003);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22013 AND `action_menu_id` = 22008 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22013,1,0,'Where is Elder Darkfeather?',1,1,22008);
-- Darkfeather
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22017 AND `action_menu_id` = 22006 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22017,0,0,'Where is Elder Firebeard?',1,1,22006);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22017 AND `action_menu_id` = 22007 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22017,1,0,'Where is Elder Moonlance?',1,1,22007);
-- Firebeard
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22012 AND `action_menu_id` = 22008 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22012,0,0,'Where is Elder Darkfeather?',1,1,22008);
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 22012 AND `action_menu_id` = 22007 AND `id` = 1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`)
VALUES (22012,1,0,'Where is Elder Moonlance?',1,1,22007);


-- Creature Updating usw.
-- Updating Elders gossip_menu_id
-- Menkhaf
UPDATE `creature_template` SET `gossip_menu_id` = 22000, `npcflag` = 3 WHERE `entry` = 55211;
-- Sekhemi
UPDATE `creature_template` SET `gossip_menu_id` = 22014, `npcflag` = 3 WHERE `entry` = 55210;
-- Evershade
UPDATE `creature_template` SET `gossip_menu_id` = 22015, `npcflag` = 3 WHERE `entry` = 55227;
-- Windsong
UPDATE `creature_template` SET `gossip_menu_id` = 22010, `npcflag` = 3 WHERE `entry` = 55224;
-- Stonebrand
UPDATE `creature_template` SET `gossip_menu_id` = 22016, `npcflag` = 3 WHERE `entry` = 55217;
-- Firebeard
UPDATE `creature_template` SET `gossip_menu_id` = 22012, `npcflag` = 3 WHERE `entry` = 55219;
-- Moonlance
UPDATE `creature_template` SET `gossip_menu_id` = 22013, `npcflag` = 3 WHERE `entry` = 55228;
-- Darkfeather
UPDATE `creature_template` SET `gossip_menu_id` = 22017, `npcflag` = 3 WHERE `entry` = 55218;
-- Deepforge
UPDATE `creature_template` SET `gossip_menu_id` = 22011, `npcflag` = 3 WHERE `entry` = 55216;

-- Elder Stormbrow movement correction
UPDATE `creature_template` SET `unit_flags` = 4, `MovementType` = 0 WHERE `entry` = 15565;
UPDATE `creature` SET `MovementType` = 0 WHERE `id` = 15565;

-- Elder Bellowrage adding moonlight aura, stop moving
UPDATE `creature_template` SET `unit_flags` = 4, `AIName` = 'SmartAI' WHERE `entry` = 15563;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 15563 AND `action_type` = 11 AND `action_param1` = 25824);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES('15563','0','0','0','11','0','100','1','0','0','0','0','11','25824','0','0','0','0','0','1','0','0','0','0','0','0','0','Elder Stormbrow - On Respawn - Cast Spotlight');

-- Elder Bladesing adding moonlight aura, stop moving
UPDATE `creature_template` SET `unit_flags` = 4, `AIName` = 'SmartAI' WHERE `entry` = 15599;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 15599 AND `action_type` = 11 AND `action_param1` = 25824);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES('15599','0','0','0','11','0','100','1','0','0','0','0','11','25824','0','0','0','0','0','1','0','0','0','0','0','0','0','Elder Stormbrow - On Respawn - Cast Spotlight');

-- Elder Bladeleaf adding moonlight aura, stop moving
UPDATE `creature_template` SET `unit_flags` = 4, `AIName` = 'SmartAI' WHERE `entry` = 15595;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 15595 AND `action_type` = 11 AND `action_param1` = 25824);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES('15595','0','0','0','11','0','100','1','0','0','0','0','11','25824','0','0','0','0','0','1','0','0','0','0','0','0','0','Elder Stormbrow - On Respawn - Cast Spotlight');

-- Elder Skygleam correcting position
UPDATE `creature` SET `position_x` = 2462, `position_y` = -6954, `position_z` = 119, `orientation` = 1.6 WHERE `guid` = 132786;

-- Correcting Omens HP, RegenHealth true
UPDATE `creature_template` SET `minlevel` = 85, `maxlevel` = 85, `exp` = 3 , `Health_mod` = 55, `RegenHealth` = 1 WHERE `entry` = 15467;

-- Omen - Giant Spotlight
UPDATE `creature_template` SET `unit_flags` = 33554432, `unit_flags2` = 2052, `AIName` = 'SmartAI', `ScriptName` = '', `faction_A` = 35, `faction_H` = 35, `flags_extra` = 0, `ScriptName` = '' WHERE `entry` = 15902;

-- Omen - delete old giant spotlights
DELETE FROM `creature` WHERE `id` = 15902;

-- Omen - Giant Spotlight, buff player if player near
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 15902 AND `action_type` = 11 AND `action_param1` = 26393);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES('15902','0','0','0','9','0','100','0','0','7','1','1','11','26393','35','0','0','0','0','7','0','0','0','0','0','0','0','Giant Spotlight - On Player in range - Cast Elunes Blessing');

-- Elder Pinnacle actual position cannot accessed
-- OLD position
-- UPDATE `creature` SET `map` = 575, `position_x` = 474, `position_y` = -523, `position_z` = 105 WHERE `guid` = 2593281;
-- New position outside of this instance
UPDATE `creature` SET `map` = 571, `position_x` = 1238, `position_y` = -4853, `position_z` = 218.3, `orientation` = 5.9 WHERE `guid` = 2593281;

-- Elder Ohanzee actual position cannot accessed
-- OLD position 
-- UPDATE `creature` SET `map` = 604, `position_x` = 1698, `position_y` = 752, `position_z` = 142.8 WHERE `guid` = 2596259;
-- New position outside of this instance
UPDATE `creature` SET `map` = 571, `position_x` = 6955, `position_y` = -4433, `position_z` = 452.31, `orientation` = 3.4 WHERE `guid` = 2596259;

-- Elder Kilias actual position cannot accessed
-- OLD position 
-- UPDATE `creature` SET `map` = 600, `position_x` = -503, `position_y` = -636, `position_z` = 30.3 WHERE `guid` = 2596259;
-- New position outside of this instance
UPDATE `creature` SET `map` = 571, `position_x` = 4787, `position_y` = -2032, `position_z` = 229.422, `orientation` = 3.8 WHERE `guid` = 2594352;

-- Lunar Festival Harbringer (Horde)
-- May not have gossip, if quest not rewarded AND If the player is not carrying an invitation
-- Gossip should give player Lunar Festival Invitation (ID:21711)
-- Horde
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 15895;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 15895 AND `event_type` = 62 AND `action_type` = 56 AND `event_param1` = 6918);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`)
VALUES (15895,0,62,100,0,6918,0,56,21711,1,7,'On gossip select questcredit');

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6918 AND `id` = 1;

-- Giving temporary access to the wintergraps fortress
-- Old Fac: 1732 for GOB ID: 191575
-- Old Fac: 1735 for GOB ID: 190763
UPDATE `gameobject_template` SET `faction` = 35 WHERE `entry` = 191575;
UPDATE `gameobject_template` SET `faction` = 35 WHERE `entry` = 190763;

-- SDK/MDW/Elunes Blessing stacking issue
DELETE FROM `spell_group` WHERE `spell_id` = 26393;
INSERT INTO `spell_group` VALUES
(1063, 26393);