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