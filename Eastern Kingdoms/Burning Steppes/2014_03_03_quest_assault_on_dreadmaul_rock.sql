-- quest Assault On Dreadmaul Rock (ID: 28454)

UPDATE `creature_template` SET `inhabitType` = 5, `spell1` = 90067, `unit_flags` = 8, `unit_flags2` = 2048, `dynamicflags` = 8, `movementId` = 231 WHERE `entry` = 48434;

DELETE FROM `creature_template_addon` WHERE `entry` = 48434;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(48434, 0, 0, 33554432, 0, 0, 61307);