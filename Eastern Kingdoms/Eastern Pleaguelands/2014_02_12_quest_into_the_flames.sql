-- Into the flames (ID: 27482)
-- spawning Bonefire gameobject to fullfill condition
DELETE FROM `gameobject` WHERE (`id` = 301079 AND `position_x` = 3465);
INSERT INTO `gameobject`(`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`animprogress`)
VALUES ('301079','0','15','1','3465','-5003','202.6','0','180','0');

-- spawning credit creatures
DELETE FROM `creature` WHERE (`id` = 45738 AND `position_x` = 3465);
INSERT INTO `creature` (`id`, `map`, `spawnmask`, `phasemask`, `modelid`, `position_x`, `position_y`, `position_z`, `spawntimesecs`, `spawndist`, `curhealth`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES (45738, 0, 1, 1, 11686, 3465, -5001, 203, 180, 0, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id` = 45738 AND `position_x` = 3464);
INSERT INTO `creature` (`id`, `map`, `spawnmask`, `phasemask`, `modelid`, `position_x`, `position_y`, `position_z`, `spawntimesecs`, `spawndist`, `curhealth`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES (45738, 0, 1, 1, 11686, 3464, -5010, 203, 180, 0, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id` = 45738 AND `position_x` = 3459);
INSERT INTO `creature` (`id`, `map`, `spawnmask`, `phasemask`, `modelid`, `position_x`, `position_y`, `position_z`, `spawntimesecs`, `spawndist`, `curhealth`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES (45738, 0, 1, 1, 11686, 3459, -5006, 203, 180, 0, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id` = 45738 AND `position_x` = 3469);
INSERT INTO `creature` (`id`, `map`, `spawnmask`, `phasemask`, `modelid`, `position_x`, `position_y`, `position_z`, `spawntimesecs`, `spawndist`, `curhealth`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES (45738, 0, 1, 1, 11686, 3469, -5005, 203, 180, 0, 1, 0, 0, 0, 0);

-- adding AIName
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 45738;

-- Update quest_template
UPDATE `quest_template` SET `flags` = 590848 WHERE `id` = 27482;

-- condition spell_implecit_target
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 85327);
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`, `Comment`)
VALUES ('13','1','85327','0','0','31','0','3','45738','0','0','0','0','','spell_implecit_target dummy creature');

-- When spell is casted Action_call_killmonster
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 45738 AND `event_type` = 8);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`comment`)
VALUES ('45738','0','0','0','8','100','1','85327','1','0','0','33','45738','0','7','0','0','On Spellhit give questcredit');
