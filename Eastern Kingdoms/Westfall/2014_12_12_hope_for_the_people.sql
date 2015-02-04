-- Hope for the People (ID: 26266)
-- Delete wrong spawned npc
DELETE FROM `creature` WHERE `guid` = 21861;

-- Make invisible npc, visible
UPDATE `creature` SET `phasemask` = 1 WHERE `guid` = 52508;