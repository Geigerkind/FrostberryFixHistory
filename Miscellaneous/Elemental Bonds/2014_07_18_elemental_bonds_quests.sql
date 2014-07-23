-- Elemental Bonds
-- Quest
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (53516, 53530, 53647, 53646, 53739, 53894, 53928, 53929);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (53516, 53530, 53647, 53646, 53739, 53894, 53928, 53929);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
-- Elemental Bonds: Doubt
(53516, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 33, 53518, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Death give questcredit'),
(53530, 0, 0, 0, 6, 50, 0, 0, 0, 0, 0, 33, 53518, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Death give questcredit'),
-- Elemental Bonds: Desire
(53647, 0, 0, 0, 6, 60, 0, 0, 0, 0, 0, 33, 53655, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Death give questcredit'),
(53646, 0, 0, 0, 6, 35, 0, 0, 0, 0, 0, 33, 53670, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Death give questcredit'),
-- Elemental Bonds: Patience
(53739, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 33, 53744, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Death give questcredit'),
(53894, 0, 0, 0, 6, 50, 0, 0, 0, 0, 0, 33, 53744, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Death give questcredit'),
-- Elemental Bonds: Fury
(53928, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 33, 53926, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Death give questcredit'),
(53929, 0, 0, 0, 6, 50, 0, 0, 0, 0, 0, 33, 53926, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On Death give questcredit');

-- Thrall Spells
-- Water: 99628