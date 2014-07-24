-- Creature (GUID: 108055) does not exist but has a record in `creature_addon`

DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);