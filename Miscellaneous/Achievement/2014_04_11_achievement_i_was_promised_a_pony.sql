-- I was promised a pony (ID: 6025)
-- Trigger spell: 104515
-- npc_spellclick_spell
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 55715 AND `spell_id` = 104515;
INSERT INTO `npc_spellclick_spells` VALUES 
(55715, 104515, 3, 0);
