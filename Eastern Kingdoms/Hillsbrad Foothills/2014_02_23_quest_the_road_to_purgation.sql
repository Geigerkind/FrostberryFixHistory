-- quest The road to Purgation (ID: 28375)
-- Delete Trash
DELETE FROM `creature` WHERE `id` IN (7068, 7071, 7069, 7075, 7072, 7070);

-- spawning quest npc
DELETE FROM `creature` WHERE `id` = 48470;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(48470,0,267,896,1,1,0,48470,-1226.35,421.119,3.97989,3.66779,300,0,0,30951,0,0,0,0,0);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48218 AND `id` IN (2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48218, 0, 2, 19, 100, 0, 28375, 0, 0, 0, 15, 28375, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On quest give questcredit'),
(48218, 0, 3, 19, 100, 0, 28375, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, -1230, 416.45, 3.15, 1.07, 'On quest accept teleport');
