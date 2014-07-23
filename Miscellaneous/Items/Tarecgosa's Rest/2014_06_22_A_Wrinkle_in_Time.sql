-- A Wrinkle in Time (ID: 29134)
UPDATE `quest_template` SET `specialFlags` = 0 WHERE `id` = 29134;

DELETE FROM `creature_template` WHERE `entry` = 6700;
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values
('6700','0','0','0','0','0','2719','0','0','0','Anachronos','',NULL,'654','63','63','0','0','1779','1779','3','1','2.14286','1','2.14286','1','3','196.8','273.6','0','299','35','2000','0','2','512','34816','2048','0','0','0','0','0','159.6','235.2','39','2','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','600','100','1','1','0','0','0','0','0','0','0','188','1','0','617299803','2','','12340');

UPDATE `creature` SET `id` = 6700 WHERE `guid` = 103001;

DELETE FROM `gossip_menu` WHERE `entry` = 654;
INSERT INTO `gossip_menu` VALUES
(654, 17956);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (654, 6539);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) values
('654','0','0','Yes, Anachronos. I am ready to witness your vision of the future.','0','1','1','0','0','0','0','','0');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 6700;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 6700;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
(6700,0,0,1,62,0,100,0,654,0,0,0,33,52605,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select give questcredit'),
(6700,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Linked with previous event - close gossip');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 654;
insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) values
(15,654,0,0,0,9,0,29134,0,0,0,0,0, '', 'Show gossip if player is on quest');

UPDATE `creature_involvedrelation` SET `id` = 6700 WHERE `quest` IN (29134, 29135);
UPDATE `creature_questrelation` SET `id` = 6700 WHERE `quest` IN (29135, 29193);

-- Camera Spells
-- 97261 Anachronos
-- 97635 Teracgosa

