-- Halo drops (ID: 24436)
-- Dummy Target Spell: 54694/56685/88529
-- Delete trash
DELETE FROM `creature` WHERE `id` = 36937;

-- creature_text
DELETE FROM `creature_text` WHERE `entry` = 36937;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(36937, 0, 0, "I've got the best heals, anywhere!", 12, 0, 100, 4, 0, 0, 'Halo drops - Goblin');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36937, 36922);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36937, 36922);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36937, 0, 0, 1, 1, 100, 1, 1, 1, 1, 1, 11, 25824, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On OOC cast spotlight'),
(36937, 0, 1, 0, 61, 100, 1, 0, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Linked with previous event say'),
(36937, 0, 2, 0, 1, 100, 1, 1, 1, 1, 1, 11, 50769, 3, 0, 0, 0, 0, 11, 36922, 20, 0, 0, 0, 0, 'On OOC cast revive on wounded soldier'),
(36937, 0, 3, 0, 52, 100, 1, 0, 36937, 0, 0, 33, 36922, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 'On text over give questcredit'),
(36937, 0, 4, 0, 52, 100, 1, 0, 36937, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over despawn'),
(36922, 0, 0, 0, 8, 100, 1, 50769, 8, 1, 1, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit despawn');
