-- quest Survey the Lakeshore (ID: 14202)
-- 45423/4/5
-- 195461
-- Update G-object
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` IN (195461, 195462, 195463);
UPDATE `gameobject_template` SET `type` = 10, `AIName` = 'SmartGameObjectAI', `data19` = 45423 WHERE `entry` = 195461;
DELETE FROM `gameobject_template` WHERE `entry` IN (195462, 195463);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`) VALUES 
(195462,10,5454,'Surveyor\'s Pole','','','',0,4,1,0,0,0,0,0,0,0,0,0,0,0,14202,0,0,0,0,0,0,0,0,0,0,0,0,0,45423,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI',''),
(195463,10,5454,'Surveyor\'s Pole','','','',0,4,1,0,0,0,0,0,0,0,0,0,0,0,14202,0,0,0,0,0,0,0,0,0,0,0,0,0,45423,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI','');

UPDATE `gameobject` SET `id` = 195463 WHERE `guid` = 45423;
UPDATE `gameobject` SET `id` = 195462 WHERE `guid` = 45424;

-- Create gossip_menu
DELETE FROM `gossip_menu` WHERE `entry` = 45423;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(45423, 21);

-- create gossip_menu_options
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 45423;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(45423, 0, 0, 'Investigate the Survey Pole', 1, 1);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (195461, 195462, 195463);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(195463, 1, 0, 62, 100, 0, 45423, 0, 0, 0, 33, 35487, 0, 18, 100, 0, 'On gossip select - target player - give questcredit'),
(195463, 1, 1, 62, 100, 0, 45423, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(195462, 1, 0, 62, 100, 0, 45423, 0, 0, 0, 33, 35488, 0, 18, 100, 0, 'On gossip select - target player - give questcredit'),
(195462, 1, 1, 62, 100, 0, 45423, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip'),
(195461, 1, 0, 62, 100, 0, 45423, 0, 0, 0, 33, 35489, 0, 18, 100, 0, 'On gossip select - target player - give questcredit'),
(195461, 1, 1, 62, 100, 0, 45423, 0, 0, 0, 72, 0, 0, 0, 0, 0, 'On gossip select - close gossip');