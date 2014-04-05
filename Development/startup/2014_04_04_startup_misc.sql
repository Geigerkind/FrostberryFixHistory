-- misc 

DELETE FROM `game_event_creature` WHERE `eventEntry` = 127;
DELETE FROM `game_event_gameobject` WHERE `eventEntry` = 127;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 203972 AND `item` = 84240;
UPDATE `skinning_loot_template` SET `maxcount` = 2 WHERE `entry` = 2042 AND `item` IN (2318, 2934);
UPDATE `gossip_menu` SET `text_id` = 68 WHERE `entry` IN (45423, 48100, 65531, 65532, 65534, 65535);
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `id` IN (309, 13975, 26616, 29066, 25325, 24977);
UPDATE `creature_text` SET `language` = 7 WHERE `entry` = 2439;

UPDATE `pool_creature` SET `chance` = 20 WHERE `pool_entry` = 60016;
DELETE FROM `pool_creature` WHERE `guid` = 500853 AND `pool_entry` = 60016;