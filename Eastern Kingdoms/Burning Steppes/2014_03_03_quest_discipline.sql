-- I Am the Law and I Am the Lash (ID: 28439)
-- spell area
DELETE FROM `spell_area` WHERE `spell` = 89261 AND `area` = 5653;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(89261, 5653, 28432, 1, 0, 0, 0, 2, 1, 74, 11),
(89261, 5653, 28239, 1, 0, 0, 0, 2, 1, 74, 11);