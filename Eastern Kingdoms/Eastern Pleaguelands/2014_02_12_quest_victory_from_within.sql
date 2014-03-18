-- quest Victory from Within (ID: 27612)
-- create new portal objects
-- Argent Portal Hall of Arms
-- old type: 22 // old data0: 85891 // old data5: 10665
UPDATE `gameobject_template` SET `type` = 10, `data0`= 0, `data5` = 0, `data19` = 65532, `AIName` = 'SmartGameObjectAI' WHERE `entry` = 205877;

-- Argent Portal Library Wing
-- old type: 22 // old data0: 85892
UPDATE `gameobject_template` SET `type` = 10, `data0`= 0, `data5` = 0, `data19` = 65531, `AIName` = 'SmartGameObjectAI' WHERE `entry` = 205876;

-- create new gossip_menu
-- Hall of Arms
DELETE FROM `gossip_menu` WHERE (`entry` = 65532);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES('65532','21');

-- Library Wing
DELETE FROM `gossip_menu` WHERE (`entry` = 65531);
INSERT INTO `gossip_menu` (`entry`,`text_id`)
VALUES('65531','21');

-- create gossip_menu_option
-- Hall of Arms
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 65532 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`)
VALUES (65532,0,0,'Open the portal.',1,1);

-- Library Wing
DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 65531 AND `id` = 0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`)
VALUES (65531,0,0,'Open the portal.',1,1);

-- SAI - On gossip click give quest credit
-- Hallo of Arms
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 205877 AND `event_type` = 62 AND `action_type` = 33 AND `event_param1` = 65532);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (205877,1,62,100,0,65532,0,33,46102,7,'On Gossip select give questcredit');

-- Library Wing
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 205876 AND `event_type` = 62 AND `action_type` = 33 AND `event_param1` = 65531);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (205876,1,62,100,0,65531,0,33,46103,7,'On Gossip select give questcredit');

-- spawn the portals
-- Hall of Wing
DELETE FROM `gameobject` WHERE (`id` = 205877 AND `position_x` = 1745);
INSERT INTO `gameobject`(`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`animprogress`,`state`)
VALUES ('205877','0','15','1','1745','-5455','84','2.4','180','0','0');

-- Library Wing
DELETE FROM `gameobject` WHERE (`id` = 205876 AND `position_x` = 1796);
INSERT INTO `gameobject`(`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`animprogress`,`state`)
VALUES ('205876','0','15','1','1796','-5427','91','2','180','0','0');

-- condition quest needed for gossip to be shown
-- Halls of Arms
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 65532 AND `SourceEntry` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,65532,0,0,0,9,0,27612,0,0,0,0,'','quest needed for gossip to be shown');

-- Library Wing
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 65531 AND `SourceEntry` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,65531,0,0,0,9,0,27612,0,0,0,0,'','quest needed for gossip to be shown');
