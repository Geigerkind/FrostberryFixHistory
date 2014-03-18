-- quest fix we all scream for ice cream

-- UPDATE NPC
UPDATE `creature_template` SET `npcflag` = 1, `AIName` = 'SmartAI' WHERE `entry` = 47446;

-- SAI 
DELETE FROM `smart_scripts` WHERE `entryorguid` = 47446;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(47446, 0, 0, 64, 100, 1, 0, 0, 0, 0, 33, 47446, 0, 18, 100, 0, 'On gossip hello - target player - give questcredit'),
(47446, 0, 1, 64, 100, 1, 0, 0, 0, 0, 41, 1000, 0, 1, 0, 0, 'On gossip hello - self - force despawn');