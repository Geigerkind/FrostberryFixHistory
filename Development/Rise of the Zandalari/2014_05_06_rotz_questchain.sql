-- Rise of the Zandalari(RotZ) Questchain
-- Horde | https://www.youtube.com/watch?v=6iPX2NCZd9c
-- Trash // Cleaning up
DELETE FROM `creature` WHERE `guid` IN (21749, 21750, 21785, 21780, 21782);

-- Making Bwembas Spirit follow the player
UPDATE `creature_template` SET `AIName` = 'SmartAI', `inhabitType` = 5, `speed_fly` = 3.7, `unit_flags` = 512 WHERE `entry` = 52234;

DELETE FROM `creature_template_addon` WHERE `entry` = 52234;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(52234, '49303');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (52234);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52234, 0, 0, 0, 1, 100, 1, 1, 1, 1, 1, 29, 0, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On spawn follow player'),
(52234, 0, 1, 0, 60, 100, 1, 120000, 120000, 1, 1, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On UPDATE completed despawn');

DELETE FROM `spell_area` WHERE `spell` = 96591;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(96591, 5317, 29219, 1, 0, 0, 0, 2, 1, 11, 11);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 96591;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(17,0,96591,0,0,29,0,52234,20,0,1,0,0,'','Work if target is not near creature');

-- The Zandalari Manace
DELETE FROM `gameobject_questrelation` WHERE `id` = 206109 AND `quest` = 29157;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(206109, 29157);

-- Bwembas Spirit
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 53081;

DELETE FROM `creature_text` WHERE `entry` IN (53081);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(53081, 0, 0, 'My spirit gonna be watchin\' over ya, $N.', 12, 0, 100, 16, 0, 0, 'Bwemba on quest accept Bwembas spirit');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (53081);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53081, 0, 0, 1, 19, 100, 0, 29219, 0, 0, 0, 11, 97749, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On quest accept cast beam on invoker'),
(53081, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 1, 0, 3, 3000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event - say');

-- 'To Bambala
DELETE FROM `creature_questrelation` WHERE `id` = 53081 AND `quest` = 29220;
INSERT INTO `creature_questrelation` VALUES
(53081, 29220);

UPDATE `quest_template` SET `prevQuestId` = 29157 WHERE `id` = 29220;

-- Serpents And Poisen
-- Headhunter: 52978
UPDATE `creature_template` SET `iconName` = 'Pickup', `npcflag` = 1, `AIName` = 'SmartAI', `gossip_menu_id` = 0 WHERE `entry` = 52978;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 52224;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 52978;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 45844;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,52978,0,0,29,0,52234,20,0,0,0,0,'','Work if target is near creature'),
(17,0,45844,0,0,9,0,29219,0,0,0,0,0,'','Work if target is on quest'),
(17,0,45844,0,0,1,0,45844,0,0,1,0,0,'','Work if target has not aura');

DELETE FROM `creature_text` WHERE `entry` IN (52978);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(52978, 0, 0, 'Da serpants owerhelmed us.', 12, 0, 100, 16, 0, 0, 'Serpants And Poisen - Headhunter'),
(52978, 0, 1, 'Ya saved my life.', 12, 0, 100, 16, 0, 0, 'Serpants And Poisen - Headhunter'),
(52978, 0, 2, 'Thanks for da help.', 12, 0, 100, 16, 0, 0, 'Serpants And Poisen - Headhunter');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (52978, 52224);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52978, 0, 0, 1, 64, 100, 1, 0, 0, 0, 0, 85, 99138, 3, 0, 0, 0, 0, 11, 52234, 20, 0, 0, 0, 0, 'On gossip hello invoker cast cleanse on bwemba'),
(52978, 0, 1, 2, 61, 100, 1, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Linked with previous event - close gossip'),
(52978, 0, 2, 3, 61, 100, 1, 0, 0, 0, 0, 11, 97295, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 'Linked with previous event - give questcredit'),
(52978, 0, 3, 4, 61, 100, 1, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event - force despawn'),
(52978, 0, 4, 0, 61, 100, 1, 0, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event - say'),
(52978, 0, 5, 0, 1, 100, 0, 1, 1, 1, 1, 11, 45842, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'ON OOC cast quest invis'),
(52224, 0, 0, 0, 1, 100, 0, 1, 1, 1, 1, 11, 45842, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'ON OOC cast quest invis');

DELETE FROM `spell_area` WHERE `spell` = 45844;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(45844, 33, 29219, 1, 0, 0, 0, 2, 1, 11, 11);

DELETE FROM `creature` WHERE `id` IN (52224, 52978);
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('52224','0','33','1740','1','65535','0','0','-12091.1','-797.424','52.288','5.14981','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','5317','1','65535','0','0','-12068.1','-883.442','47.523','3.46513','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-11996.7','-924.585','42.5516','4.77674','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12057.6','-937.154','42.1654','1.61551','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12073.7','-971.396','44.5977','1.33669','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12121.7','-992.449','36.993','6.17082','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12177.9','-983.06','37.7463','6.19831','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','105','1','65535','0','0','-12242.9','-990.359','33.7857','3.16274','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','105','1','65535','0','0','-12205.2','-980.068','32.8832','5.6446','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','105','1','65535','0','0','-12242.4','-935.967','43.0632','4.91418','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','105','1','65535','0','0','-12207.8','-903.523','40.8566','0.256767','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','105','1','65535','0','0','-12207.4','-903.428','40.998','0.256767','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','5317','1','65535','0','0','-12176.1','-887.804','43.544','6.053','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','5317','1','65535','0','0','-12195.1','-869.938','45.5424','5.69565','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','5317','1','65535','0','0','-12184.9','-845.732','41.56','4.81993','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12159','-824.495','42.5922','5.15765','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12159','-824.495','42.5922','5.15765','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12146.9','-829.541','42.5863','5.40898','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12145.9','-830.69','42.832','5.40898','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','5317','1','65535','0','0','-12115.4','-810.204','38.9537','4.83956','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','5317','1','65535','0','0','-12111.1','-806.81','41.0968','3.84997','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','5317','1','65535','0','0','-12070.8','-816.916','43.5827','3.39836','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12065.1','-815.423','43.786','3.39836','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12039.3','-837.879','41.9667','2.31844','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12040.7','-858.336','41.3085','1.76866','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12033.5','-895.015','39.6056','1.96894','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12031.5','-918.082','40.2011','2.64831','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-12024.2','-921.875','40.0748','3.74001','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-11971.1','-917.448','39.8034','5.32652','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-11988.2','-879.086','31.9419','5.40113','300','0','0','53681','0','0','0','0','0'),
('52224','0','5339','33','1','65535','0','0','-11998.7','-834.518','33.6483','4.10522','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12006.7','-795.1','16.7691','5.4404','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12041.5','-771.264','15.5578','6.17082','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12086.2','-753.665','12.0876','6.1394','300','0','0','53681','0','0','0','0','0'),
('52224','0','33','1740','1','65535','0','0','-12119.1','-755.918','13.519','3.49654','300','0','0','53681','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-12040.7','-545.096','14.5519','5.41052','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1760','1','1','0','0','-11950.1','-489.075','30.5544','3.40339','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-11926.9','-536.031','16.2005','2.56563','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1760','1','1','0','0','-11954.7','-508.58','17.1264','0.506145','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-12082.9','-652.481','20.0874','2.16421','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-11979','-702.446','13.7847','2.16421','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-11950.7','-712.455','18.122','3.64774','300','0','0','0','0','0','0','0','0'),
('52978','0','5339','33','1','1','0','0','-11944','-814.372','31.0161','4.17134','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-12185.6','-736.549','32.5014','2.32129','300','0','0','0','0','0','0','0','0'),
('52978','0','5339','33','1','1','0','52978','-12065.4','-964.5','46.3319','4.71589','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-12066.5','-757.469','12.5751','3.40339','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-11996.8','-625.238','20.1126','1.20428','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-11905.2','-547.859','17.0528','3.80482','300','0','0','0','0','0','0','0','0'),
('52978','0','5339','33','1','1','0','52978','-12009.3','-929.452','42.0443','4.82598','300','0','0','116235','0','0','0','0','0'),
('52978','0','5339','33','1','1','0','52978','-12016.8','-863.422','42.0932','6.10225','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-12021.7','-809.224','18.1415','0.907571','300','0','0','0','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','0','-12100.8','-730.028','16.429','6.19592','300','0','0','0','0','0','0','0','0'),
('52978','0','5339','33','1','1','0','52978','-12083.2','-999.854','49.9971','4.08365','300','0','0','116235','0','0','0','0','0'),
('52978','0','5339','33','1','1','0','52978','-12112.2','-969.584','45.4561','2.82625','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','5317','1','1','0','52978','-12153.4','-949.58','45.3926','3.89439','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','5317','1','1','0','52978','-12173.7','-908.305','47.9832','4.82901','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','5317','1','1','0','52978','-12193.8','-895.769','46.6645','2.96321','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','105','1','1','0','52978','-12208.2','-937.155','37.8738','3.3991','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','105','1','1','0','52978','-12240.1','-957.743','44.3954','4.10989','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','105','1','1','0','52978','-12258.6','-926.136','46.4352','2.37809','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','5317','1','1','0','52978','-12168.2','-864.151','48.3998','2.03644','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','5317','1','1','0','52978','-12140.1','-871.976','47.708','5.53539','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','5317','1','1','0','52978','-12078.4','-881.251','47.8282','2.50376','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','52978','-12042.8','-813.94','47.5873','5.75923','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','52978','-12069.6','-779.575','17.0045','2.79849','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','52978','-12106.1','-773.455','15.7749','3.13621','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','1740','1','1','0','52978','-12165.5','-792.937','13.4255','4.26719','300','0','0','116235','0','0','0','0','0'),
('52978','0','33','105','1','1','0','52978','-12209','-878.223','43.6028','5.79477','300','0','0','116235','0','0','0','0','0');

-- Spirits Are With Us
UPDATE `gameobject_template` SET `type` = 10, `data0` = 0, `data1` = 29222, `data5` = 0, `data6` = 3000, `AIName` = 'SmartGameObjectAI' WHERE `entry` = 208508;

DELETE FROM `creature_template` WHERE `entry` IN (80000, 80001, 80002);
INSERT INTO `creature_template` (`entry`, `modelid1`,  `modelid2`,  `modelid3`,  `modelid4`, `name`, `minlevel`, `maxlevel`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `mindmg`, `maxdmg`, `attackpower`, `unit_flags`, `unit_flags2`, `type_flags`, `AIName`, `inhabittype`) VALUES 
(80000, 4449, 4449, 4449, 4449, 'Spirits Are With Us - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4),
(80001, 4449, 4449, 4449, 4449, 'Spirits Are With Us - Trigger', 60, 60, 35, 35, 0, 0, 0, 1, 1, 1, 4, 2, 1048576, 'SmartAI', 4);

insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values
(80002,'0','0','0','0','0','37820','0','0','0','Bwemba','','','12745','85','85','3','0','35','35','2','1.15','1.15','1','3.7','1','0','1007','1354.7','0','1571','1','0','0','2','512','2048','0','0','0','0','0','0','758.1','1062.1','220','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','5','1','1.5','1','1','1','0','0','0','0','0','0','0','144','1','52234','0','0','','15595');


DELETE FROM `creature` WHERE `id` = 80000;
insert into `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('80000','0','33','5317','1','1','0','0','-12112.1','-937.257','45.4905','1.16365','300','0','0','3052','0','0','0','0','0');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 208508;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,1,208508,1,0,29,0,80002,40,0,1,0,0,'','Work if target is not near creature'),
(22,1,208508,1,0,9,0,29222,0,0,0,0,0,'','Work if target has quest');

-- Sound Ids are missnig
DELETE FROM `creature_text` WHERE `entry` IN (52301, 80002);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(80002, 0, 0, 'Now let\'s see what Bwemba\'s conjured up...', 12, 0, 100, 1, 0, 0, 'Spirits Are With Us - Bwemba'),
(80002, 1, 0, 'Dis is serious business. Venoxis ain\'t one to trifle wit\'.', 12, 0, 100, 5, 0, 0, 'Spirits Are With Us - Bwemba'),
(52301, 0, 0, 'You disssssturb the plans of Gurubashi, little one. It\'sss to late for you. Too late for all of you!', 12, 0, 100, 15, 0, 0, 'Spirits Are With Us - High Priest Venoxis'),
(52301, 1, 0, 'My ssssserpants, dey already ssssslither beneath every rock an\' shrub of Ssssstranglethorn.', 12, 0, 100, 1, 0, 0, 'Spirits Are With Us - High Priest Venoxis'),
(52301, 2, 0, 'We will reclaim thisss land. Gurubashi land. An\' we kill anyone dat getssss in our way!', 12, 0, 100, 11, 0, 0, 'Spirits Are With Us - High Priest Venoxis');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 52301;

-- Visual Spawnspell is wrong 
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (208508, 52301, 80002);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(208508, 1, 0, 0, 64, 100, 0, 0, 0, 0, 0, 12, 80002, 2, 120000, 0, 0, 0, 11, 80001, 20, 0, 0, 0, 0, 'Linked with previous event summon bwemba'),
(208508, 1, 1, 0, 64, 100, 0, 0, 0, 0, 0, 33, 52678, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello give questcredit'),
(52301, 0, 0, 0, 1, 100, 1, 1, 1, 1, 1, 11, 70509, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC cast explosion'),
(52301, 0, 1, 0, 60, 100, 1, 1500, 1500, 1, 1, 1, 0, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(52301, 0, 2, 0, 52, 100, 1, 0, 52301, 0, 0, 1, 1, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(52301, 0, 3, 0, 52, 100, 1, 1, 52301, 0, 0, 1, 2, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(52301, 0, 4, 0, 52, 100, 1, 2, 52301, 0, 0, 11, 54694, 3, 0, 0, 0, 0, 19, 80002, 40, 0, 0, 0, 0, 'On text over cast dummy spell'),
(52301, 0, 5, 6, 52, 100, 1, 2, 52301, 0, 0, 11, 70509, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over cast explosion'),
(52301, 0, 6, 0, 61, 100, 1, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event - despawn'),
(80002, 0, 0, 0, 1, 100, 1, 100, 100, 1, 1, 1, 0, 1500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC say text'),
(80002, 0, 1, 0, 52, 100, 1, 0, 80002, 0, 0, 12, 52301, 2, 120000, 0, 0, 0, 11, 80000, 20, 0, 0, 0, 0, 'On text over summon High Priest Venoxis'),
(80002, 0, 2, 3, 8, 100, 1, 54694, 1, 1, 1, 1, 1, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(80002, 0, 3, 0, 61, 100, 1, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say');

-- Track the Tracker
UPDATE `quest_template` SET `SourceSpellId` = 97466 WHERE `id` = 29226;

-- The Hunter's Revenge
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 52346;



