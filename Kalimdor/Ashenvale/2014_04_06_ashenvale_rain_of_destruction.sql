-- Quest Rain of Destruction (ID: 13798)
-- Dummy Target Spell: 54694
-- spawn / creature correction
DELETE FROM `creature` WHERE `id` IN (33977, 44414);

DELETE FROM `creature_involvedrelation` WHERE `quest` = 13798;
INSERT INTO `creature_involvedrelation` VALUES 
(33760, 13798);

UPDATE `creature_template` SET `AIName` = 'SmartAi' WHERE `entry` = 33760;
UPDATE `smart_scripts` SET `entryorguid` = 33760 WHERE `entryorguid` = 44414;

UPDATE `creature_template` SET `KillCredit1` = 33965 WHERE `entry` IN (33945,33914);
UPDATE `creature_template` SET `KillCredit1` = 33969 WHERE `entry` = 33912;

UPDATE `creature_template` SET `AIName` = 'SmartAI'  WHERE `entry` IN (33965,33945,33914,33912);

-- spawn requiered gameobjects

DELETE FROM `gameobject` WHERE `id` = 301007;
insert into `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('301007','1','331','431','1','1','2251.71','-2575.99','123.8','2.53827','0','0','0.954844','0.297109','300','0','1'),
('301007','1','331','431','1','1','2245.9','-2494.84','123.081','3.29852','0','0','0.996923','-0.078382','300','0','1');


-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (33965,33945,33914,33912);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`comment`) VALUES 
(33965,0,0,0,1,100,1,1,1,1,1,11,54694,2,11,33945,10,'On OOC cast dummy spell'),
(33965,0,1,0,1,100,1,1,1,1,1,11,54694,2,11,33945,10,'On OOC cast dummy spell'),
(33965,0,2,0,1,100,1,1,1,1,1,11,54694,2,11,33945,10,'On OOC cast dummy spell'),
(33965,0,3,0,1,100,1,1,1,1,1,11,54694,2,11,33945,10,'On OOC cast dummy spell'),
(33965,0,4,0,1,100,1,1,1,1,1,11,54694,2,11,33945,10,'On OOC cast dummy spell'),
(33965,0,5,0,1,100,1,1,1,1,1,11,54694,2,11,33914,10,'On OOC cast dummy spell'),
(33965,0,6,0,1,100,1,1,1,1,1,11,54694,2,11,33914,10,'On OOC cast dummy spell'),
(33965,0,7,0,1,100,1,1,1,1,1,11,54694,2,11,33914,10,'On OOC cast dummy spell'),
(33965,0,8,0,1,100,1,1,1,1,1,11,54694,2,11,33914,10,'On OOC cast dummy spell'),
(33965,0,9,0,1,100,1,1,1,1,1,11,54694,2,11,33914,10,'On OOC cast dummy spell'),
(33965,0,10,0,1,100,1,1,1,1,1,11,54694,2,11,33912,10,'On OOC cast dummy spell'),
(33965,0,11,0,1,100,1,1,1,1,1,11,54694,2,11,33912,10,'On OOC cast dummy spell'),

(33945,0,0,0,8,100,1,54694,1,1,1,33,33965,0,18,100,0,'On spellhit - give questcredit'),
(33945,0,1,0,8,100,1,54694,1,1,1,51,0,0,1,0,0,'Linked with previous event - force despawn - self'),

(33914,0,0,0,8,100,1,54694,1,1,1,33,33965,0,18,100,0,'On spellhit - give questcredit'),
(33914,0,1,0,8,100,1,54694,1,1,1,51,0,0,1,0,0,'Linked with previous event - force despawn - self'),

(33912,0,0,0,8,100,1,54694,1,1,1,33,33969,0,18,100,0,'On spellhit - give questcredit'),
(33912,0,1,0,8,100,1,54694,1,1,1,51,0,0,1,0,0,'Linked with previous event - force despawn - self');
