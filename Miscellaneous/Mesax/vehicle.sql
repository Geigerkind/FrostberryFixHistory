-- test
UPDATE `creature_template` SET `IconName` = "vehichleCursor", `minlevel` = 85, `maxlevel` = 85, `exp` = 3, `VehicleId` = 335, `InhabitType` = 7, `speed_run` = 2, `AIName` = "SmartAI" WHERE `entry`  = 52188;

REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(52188,62309,0,0);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 52188;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(52188,14305,1,0,'The core',1,200000);