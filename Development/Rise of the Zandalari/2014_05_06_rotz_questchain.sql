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
(52234, 0, 1, 0, 60, 100, 1, 60000, 60000, 1, 1, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On UPDATE completed despawn');

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

-- To Bambala
DELETE FROM `creature_questrelation` WHERE `id` = 53081 AND `quest` = 29220;
INSERT INTO `creature_questrelation` VALUES
(53081, 29220);

UPDATE `quest_template` SET `prevQuestId` = 29157 WHERE `id` = 29220;

-- Serpents And Poisen
-- Headhunter: 52978

