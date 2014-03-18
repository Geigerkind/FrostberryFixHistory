-- quest sowing a Solution(ID: 24566)
-- NPC: 37090 | 37091
-- Spell: 70458

-- SAI
DELETE FROM `smart_scripts` WHERE `id` = 2 AND `entryorguid` IN (37090, 37091);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`comment`) VALUES 
(37090,0,2,0,8,100,0,70458,1,0,0,33,37726,0,7,0,0,'On Spellhit give questcredit'),
(37091,0,2,0,8,100,0,70458,1,0,0,33,37726,0,7,0,0,'On Spellhit give questcredit');
