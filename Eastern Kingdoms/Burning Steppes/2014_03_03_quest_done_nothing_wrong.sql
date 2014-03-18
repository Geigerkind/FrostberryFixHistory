-- quest Done nothing wrong (ID: 28417/28172)
-- Blue - 47821 -63117
-- Red - 47814 -63114
-- Yellow - 47822 -63119
-- Green - 47820 -63116

-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI', `npcflag` = 1 WHERE `entry` IN (47821, 47822, 47820, 47814);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (47821, 47822, 47820, 47814);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47821, 0, 0, 64, 100, 1, 0, 0, 0, 0, 56, 63117, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello - give questcredit'),
(47821, 0, 1, 64, 100, 1, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello - despawn'),
(47822, 0, 0, 64, 100, 1, 0, 0, 0, 0, 56, 63119, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello - give questcredit'),
(47822, 0, 1, 64, 100, 1, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello - despawn'),
(47820, 0, 0, 64, 100, 1, 0, 0, 0, 0, 56, 63116, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello - give questcredit'),
(47820, 0, 1, 64, 100, 1, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello - despawn'),
(47814, 0, 0, 64, 100, 1, 0, 0, 0, 0, 56, 63114, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello - give questcredit'),
(47814, 0, 1, 64, 100, 1, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip hello - despawn');
