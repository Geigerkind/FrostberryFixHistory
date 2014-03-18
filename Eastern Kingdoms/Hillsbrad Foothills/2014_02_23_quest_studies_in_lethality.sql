-- quest Studies in Lethality (ID: 28324)
-- creature
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 48319;

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48319 AND `id` IN (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48319, 0, 0, 23, 100, 1, 89756, 1, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 1 stack - give questcredit'),
(48319, 0, 1, 23, 100, 1, 89756, 2, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 2 stack - give questcredit'),
(48319, 0, 2, 23, 100, 1, 89756, 3, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 3 stack - give questcredit'),
(48319, 0, 3, 23, 100, 1, 89756, 4, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 4 stack - give questcredit'),
(48319, 0, 4, 23, 100, 1, 89756, 5, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 5 stack - give questcredit'),
(48319, 0, 5, 23, 100, 1, 89756, 6, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 6 stack - give questcredit'),
(48319, 0, 6, 23, 100, 1, 89756, 7, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 7 stack - give questcredit'),
(48319, 0, 7, 23, 100, 1, 89756, 8, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 8 stack - give questcredit'),
(48319, 0, 8, 23, 100, 1, 89756, 9, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 9 stack - give questcredit'),
(48319, 0, 9, 23, 100, 1, 89756, 10, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 10 stack - give questcredit'),
(48319, 0, 10, 23, 100, 1, 89756, 11, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 11 stack - give questcredit'),
(48319, 0, 11, 23, 100, 1, 89756, 12, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 12 stack - give questcredit'),
(48319, 0, 12, 23, 100, 1, 89756, 13, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 13 stack - give questcredit'),
(48319, 0, 13, 23, 100, 1, 89756, 14, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 14 stack - give questcredit'),
(48319, 0, 14, 23, 100, 1, 89756, 15, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 15 stack - give questcredit'),
(48319, 0, 15, 23, 100, 1, 89756, 16, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 16 stack - give questcredit'),
(48319, 0, 16, 23, 100, 1, 89756, 17, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 17 stack - give questcredit'),
(48319, 0, 17, 23, 100, 1, 89756, 18, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 18 stack - give questcredit'),
(48319, 0, 18, 23, 100, 1, 89756, 19, 1, 1, 33, 48290, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 'On having aura 19 stack - give questcredit'),
(48319, 0, 19, 23, 100, 1, 89756, 20, 1, 1, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On having aura 20 stack - give questcredit');
