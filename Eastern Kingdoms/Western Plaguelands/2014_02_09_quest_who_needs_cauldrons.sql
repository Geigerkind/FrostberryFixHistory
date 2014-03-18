-- Who needs Cauldrons? (ID: 26978)
-- Dithers' Plague Drum ID: 205069
-- Felstone Farm Plague Drum Target ID: 301072
-- Place Dithers' Drum ID: 83176

-- spawn condition object
DELETE FROM `gameobject` WHERE `id` = 301072 AND `position_x` IN (1808,1790,1749,1809);
INSERT INTO `gameobject`(`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`animprogress`) VALUES 
('301072','0','15','1','1808','-1222','60','0','180','0'),
('301072','0','15','1','1790','-1252','60','0','180','0'),
('301072','0','15','1','1749','-1187','60','0','180','0'),
('301072','0','15','1','1809','-1164','60','0','180','0');

-- Updating dummy creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI', `minlevel` = 120, `maxlevel` = 120, `mindmg` = 1, `maxdmg` = 1, `unit_flags` = 33554432 WHERE `entry` IN (44622,44623,44624,44625);

-- Updating Creature
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 5, `position_x` = 1748.5, `position_y` = -1187, `position_z` = 60 WHERE `guid` = 10949;

-- On death -> Give Questcredit -> player range
DELETE FROM `smart_scripts` WHERE `id` = 0 AND `entryorguid` IN (44622,44623,44624,44625);
DELETE FROM `smart_scripts` WHERE `id` = 1 AND `entryorguid` IN (44622,44623,44624,44625);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`, `comment`) VALUES 
(44622, 0, 0, 6, 100, 1, 0, 0, 0, 33, 44622, 0, 18, 20, 'On death - give questcredit - player near'),
(44622, 0, 1, 13, 100, 1, 1, 1, 0, 37, 0, 0, 1, 0, 'On victim casting - kill - self'),
(44623, 0, 0, 6, 100, 1, 0, 0, 0, 33, 44623, 0, 18, 20, 'On death - give questcredit - player near'),
(44623, 0, 1, 13, 100, 1, 1, 1, 0, 37, 0, 0, 1, 0, 'On victim casting - kill - self'),
(44624, 0, 0, 6, 100, 1, 0, 0, 0, 33, 44624, 0, 18, 20, 'On death - give questcredit - player near'),
(44624, 0, 1, 13, 100, 1, 1, 1, 0, 37, 0, 0, 1, 0, 'On victim casting - kill - self'),
(44625, 0, 0, 6, 100, 1, 0, 0, 0, 33, 44625, 0, 18, 20, 'On death - give questcredit - player near'),
(44625, 0, 1, 13, 100, 1, 1, 1, 0, 37, 0, 0, 1, 0, 'On victim casting - kill - self');
