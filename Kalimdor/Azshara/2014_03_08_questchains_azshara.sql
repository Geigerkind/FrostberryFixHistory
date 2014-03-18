-- questchains Azshara #3

UPDATE `quest_template` SET `PrevQuestId` = 14194 WHERE `id` = 14468;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(36749,1,16,1233,1,65535,0,0,3249.67,-4989.19,131.721,0.365179,300,0,0,328,0,0,0,0,0);

UPDATE `creature_template` SET `faction_h` = 2160, `faction_a` = 2160 WHERE `entry` = 36744;