-- hillsbrad foothills on kill quests
-- Angry Scrubbing Bubbles
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 48319;
UPDATE `quest_template` SET `flags` = 1024 WHERE `id` = 28329;
DELETE FROM `creature_questrelation` WHERE `id` = 48319;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 48319 AND `id` = 20;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48319, 0, 20, 6, 100, 1, 0, 0, 0, 0, 7, 28329, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'on death - give quest');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 48319;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(22,21,48319,0,0,8,0,28329,0,0,1,0,0,'','If quest rewarded, event doesnt work'),
(22,21,48319,0,0,9,0,28329,0,0,1,0,0,'','If quest rewarded, event doesnt work');

-- Muckgill's Flippers
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `item` = 63090;

-- Missing questrelations
DELETE FROM `creature_involvedrelation` WHERE `id` = 47900 AND `quest` = 28230;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(47900, 28230);

DELETE FROM `creature_questrelation` WHERE `id` = 47900 AND `quest` IN (28230, 28235, 28237);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(47900, 28230),
(47900, 28235),
(47900, 28237);