-- Reinforcements... (ID: 26066)
-- sai
DELETE FROM `smart_scripts` WHERE `entryorguid` = 11917 AND `id` IN (15,16);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (11915, 11918) AND `id` IN (1,2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(11917, 0, 15, 0, 8, 100, 1, 78315, 1, 1, 1, 33, 42024, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'on spellhit give questcredit'),
(11917, 0, 16, 0, 8, 100, 1, 78315, 1, 1, 1, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on spellhit - despawn'),
(11915, 0, 1, 0, 8, 100, 1, 78315, 1, 1, 1, 33, 42024, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'on spellhit give questcredit'),
(11915, 0, 2, 0, 8, 100, 1, 78315, 1, 1, 1, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on spellhit - despawn'),
(11918, 0, 1, 0, 8, 100, 1, 78315, 1, 1, 1, 33, 42024, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'on spellhit give questcredit'),
(11918, 0, 2, 0, 8, 100, 1, 78315, 1, 1, 1, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'on spellhit - despawn');