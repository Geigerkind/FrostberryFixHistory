-- Bullet Time
-- Achievement Credit spell: 95929
-- 0.206612
-- 0.144589
-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI', `Health_mod` = 0.144589 WHERE `entry` IN (50562, 50561);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 50561;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(50561, 0, 0, 8, 100, 1, 93564, 32, 1, 1, 11, 95929, 6, 18, 100, 0, 'On gossip select - target player - give questcredit');