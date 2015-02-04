-- Insert required gameobjects
DELETE FROM `gameobject_template` WHERE `entry` IN (194903, 194906);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`) VALUES
('194903','5','8707','Ashenvale Oak','','','','0','0','0.3','0','0','0','0','0','0','0','1','0','1','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','',''),
('194906','8','327','Ashenvale Oak Spell Focus','','','','0','0','0.1','0','0','0','0','0','0','1606','6','0','1','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','');

-- Spawn required gameobjects
DELETE FROM `gameobject` WHERE `id` = 194906;
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES
('194906','1','331','437','1','1','2539.24','-3257.91','129.875','0','500'),
('194906','1','331','437','1','1','2481.98','-3267.46','118.749','0','500'),
('194906','1','331','437','1','1','2374.34','-3161.09','118.363','0','500'),
('194906','1','331','437','1','1','2283.5','-3221.06','111.671','0','500'),
('194906','1','331','437','1','1','2300.62','-3071.33','122.94','0','500'),
('194906','1','331','437','1','1','2311.3','-3127.08','122.211','0','500'),
('194906','1','331','437','1','1','2641.63','-3289.36','136.996','0','500'),
('194906','1','331','437','1','1','2575','-3289.35','131.398','0','500'),
('194906','1','331','437','1','1','2638.16','-3343.14','126.912','0','500');


-- Conditions
DELETE FROM `conditions` WHERE `SourceEntry` = 64605;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13','1','64605','0','0','31','0','3','34167','0','0','0','0','', 'Spell hit Ashenvale Oak only'),
('13','1','64605','0','0','36','0','0','0','0','0','0','0','', 'Check if Ashenvale Oak alive');

-- UPDATE Ashenvale Oak
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 34167;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 34167;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(34167, 0, 0, 1, 8, 100, 0, 64605, 1, 1, 1, 33, 34138, 0, 7, 0, 0, 'On Spellhit give questcredit'),
(34167, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 51, 0, 0, 1, 0, 0, 'Linked with 0 - kill self');
