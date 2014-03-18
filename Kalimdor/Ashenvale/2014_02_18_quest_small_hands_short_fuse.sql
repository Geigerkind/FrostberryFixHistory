-- quest small hands, short fuse (ID: 13944)
-- item: 46701 spell: 65433

-- Update credit npc
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags` = 4 WHERE `entry` = 34424;

-- spawn dummy npc
DELETE FROM `creature` WHERE `id` = 34424;
INSERT INTO `creature` (`id`, `map`, `spawnmask`, `phasemask`, `modelid`, `position_x`, `position_y`, `position_z`, `spawntimesecs`, `spawndist`, `curhealth`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(34424, 1, 1, 1, 11686, 2976.4, -524.1, 202.5, 180, 0, 1, 0, 0, 0, 0),
(34424, 1, 1, 1, 11686, 2978, -510, 202, 180, 0, 1, 0, 0, 0, 0);

UPDATE `creature` SET `position_x` = 2980, `position_y` = -524, `position_z` = 201.2 WHERE `guid` = 71710;

-- condition implecit target
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 65433);
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`, `Comment`)
VALUES ('13','1','65433','0','0','31','0','3','34424','0','0','0','0','','spell_implecit_target dummy creature');


-- SAI
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 34424 AND `event_type` = 8);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`comment`)
VALUES ('34424','0','0','0','8','100','1','65433','1','0','0','33','34424','0','7','0','0','On Spellhit give questcredit');