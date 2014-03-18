-- fix quest 29364: corn mash
-- Updating Object, Quest and creating Trigger NPC
UPDATE `gameobject_template` SET `flags` = 4,`data5` = 1,`data6` = 0, `AIName` = 'SmartGameObjectAI' WHERE `entry` = 208880;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 208880 WHERE `id` = 29364;
DELETE FROM `creature_template` WHERE `entry` = 208880;
INSERT INTO `creature_template` (`entry`,`modelid1`,`name`,`AIName`,`unit_flags`,`unit_flags2`) VALUES 
(208880, 4449, 'Dummy Corn Mash KillCredit','SmartAI',4,2);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 208880;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`comment`) VALUES 
(208880,1,0,64,100,0,0,51,0,0,0,0,0,0,11,208880,10,'On Gossip Hello kill trigger'),
(208880,0,0,6,100,1,0,33,208880,0,0,0,0,0,18,20,0,'On death - give questcredit');

-- spawning Trigger
DELETE FROM `creature` WHERE `id` = 208880;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('208880','1','1638','5345','1','1','0','0','-1301.29','131.533','131.464','2.41079','300','0','0','42','0','0','0','0','0'),
('208880','1','1638','5345','1','1','0','0','-1304.82','114.385','131.663','1.74029','300','0','0','42','0','0','0','0','0'),
('208880','1','1638','5345','1','1','0','0','-1302.34','85.6246','129','4.79698','300','0','0','42','0','0','0','0','0'),
('208880','1','1638','5345','1','1','0','0','-1284.46','75.1211','128.402','0.691791','300','0','0','42','0','0','0','0','0'),
('208880','1','1638','5345','1','1','0','0','-1316.85','25','137.4','0.691791','300','0','0','42','0','0','0','0','0'),
('208880','1','1638','5345','1','1','0','0','-1290.65','50','129.2','0.691791','300','0','0','42','0','0','0','0','0'),
('208880','1','1638','5345','1','1','0','0','-1240.02','47.995','127.075','1.06529','300','0','0','42','0','0','0','0','0'),
('208880','1','1638','5345','1','1','0','0','-1239.95','-9.84506','164.91','1.06529','300','0','0','42','0','0','0','0','0');





