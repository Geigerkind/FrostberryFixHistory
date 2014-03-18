-- quest heroes of the horde (ID: 28400)
-- spawning npc
DELETE FROM `creature` WHERE `id` = 48515;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('48515','0','267','896','1','65535','0','0','-1358.42','655.343','49.1582','5.42839','300','0','0','605','0','0','0','0','0'),
('48515','0','267','896','1','65535','0','0','-1247.64','563.127','28.0978','5.1807','300','0','0','605','0','0','0','0','0'),
('48515','0','267','896','1','1','0','0','-1245.47','519.323','15.0393','0.403429','300','0','0','605','0','0','0','0','0'),
('48515','0','267','896','1','65535','0','0','-1262.71','491.942','11.585','5.05682','300','0','0','605','0','0','0','0','0');

-- quest
UPDATE `quest_template` SET `NextQuestIdChain` = 28400 WHERE `id` = 28397;
UPDATE `quest_template` SET `PrevQuestId` = 28397 WHERE `id` = 28400;

DELETE FROM `creature_questrelation` WHERE `id` = 48470 AND `quest` = 28400;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(48470, 28400);

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI', `npcflag` = 3, `gossip_menu_id` = 12430 WHERE `entry` = 48470;

-- menu
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 12430 AND `ID` = 1;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(12430, 1, 0, "I got the plans, let's get out of here!", 1, 1);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48470;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48470, 0, 0, 62, 100, 0, 12430, 1, 0, 0, 15, 28400, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select questcredit'),
(48470, 0, 1, 62, 100, 0, 12430, 1, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, -16, -920, 54.35, 4.3, 'On gossip select teleport');

-- conditons
DELETE FROM `conditions` WHERE `SourceGroup` = 12430 AND `SourceEntry` = 1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,12430,1,0,0,2,0,64307,1,0,0,0,'','item needed for gossip to be shown');