-- quest A line in the dirt (ID: 24546/25045)
-- Horde: 201744
-- Neutral: 201743
-- Alliance: 202460

-- Placing Alliance field banner
DELETE FROM `gameobject` WHERE `guid` = 64524;
UPDATE `gameobject` SET `id` = 201743 WHERE `guid` = 68373;
UPDATE `gameobject` SET `id` = 201781 WHERE `guid` = 39258;

-- Trigger NPC
DELETE FROM `creature` WHERE `id` = 37669;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(37669,1,4709,4850,1,65535,0,0,-2129.78,-2080.86,99.3738,1.06465,300,0,0,42,0,0,0,0,0),
(37669,1,4709,4850,1,65535,0,0,-2466.4,-2307,100.231,4.35823,300,0,0,42,0,0,0,0,0);


-- Updating Alliance and Horde Banner
UPDATE `gameobject_template` SET `type` = 10, `castBarCaption` = 'Capturing', `data0` = 93, `data1` = 0, `data5` = 1, `data10` = 70263, `data14` = 37190, `data22` = 11724, `AIName` = 'SmartGameObjectAI' WHERE `entry` IN (201744, 202460, 201743, 201781);

-- SAI
DELETE FROM `smart_scripts` WHERE `id` IN (0,1,2,3) AND `entryorguid` IN (201743, 201781);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`comment`) VALUES 
(201743,1,0,0,64,100,0,0,0,0,0,33,39029,0,7,0,0,'On gossip hello give questcredit'),
(201743,1,1,0,64,100,0,0,0,0,0,33,37667,0,7,0,0,'On gossip hello give questcredit'),
(201743,1,2,0,64,100,0,0,0,0,0,50,202460,60000,11,37669,20,'On gossip hello spawn Horde Banner'),
(201781,0,0,0,64,100,0,0,0,0,0,33,39030,0,7,0,0,'On gossip hello give questcredit'),
(201781,1,1,0,64,100,0,0,0,0,0,33,37668,0,7,0,0,'On gossip hello give questcredit'),
(201781,1,2,0,64,100,0,0,0,0,0,50,201744,60000,11,37669,20,'On gossip hello spawn Alliance Banner');
