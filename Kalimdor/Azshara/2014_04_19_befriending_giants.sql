-- Befriending Giants (ID: 14377) // Azsharite Experiment Number One (ID: 14385) // Azsharite Experiment Number Two (ID: 14388)
-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (10780, 10797);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 16 AND `SourceEntry` = 36437;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,10780,0,0,0,9,0,14377,0,0,0,0,0,'','Show gossip if player is on quest'),
(15,10780,0,0,0,2,0,49211,1,0,0,0,0,'','Show gossip if player has item'),
(15,10780,1,0,0,9,0,14385,0,0,0,0,0,'','Show gossip if player is on quest'),
(15,10780,2,0,0,9,0,14388,0,0,0,0,0,'','Show gossip if player is on quest'),
(15,10780,2,0,0,1,0,68710,1,0,0,0,0,'','Show gossip if player has aura'),
(15,10797,0,0,0,9,0,14388,0,0,0,0,0,'','Show gossip if player is on quest'),
(15,10797,0,0,0,1,0,68710,1,0,1,0,0,'','Show gossip if player has aura'),
(16,0,36437,0,0,4,0,16,0,0,0,0,0,'','Vehicle bound on zone Azshara');

-- gossip stuff
DELETE FROM `gossip_menu` WHERE `entry` IN (10781, 10782, 10783, 10784, 10785, 10786, 10787, 10788);
INSERT INTO `gossip_menu` VALUES
(10781, 20000),
(10782, 20001),
(10783, 20002),
(10784, 20003),
(10785, 20004),
(10786, 20005),
(10787, 20006),
(10788, 20007);

DELETE FROM `npc_text` WHERE `id` IN (20000, 20001, 20002, 20003, 20004, 20005, 20006, 20007);
INSERT INTO `npc_text` (`id`, `text0_0`, `em0_0`) VALUES
(20000, "Ha - harrrum! Food? We don't eat squishlings, friend, not unless they aggravate us. We eat rocks and stones and earth. Though I sometimes find the crunch of bones makes a delightful seasoning. ", 7),
(20001, 'Azsharite? You soft ones come up with new names for everything. What is this "azsharite?"', 0),
(20002, 'Oh - hah! Harrooo - Ha harum! Little friend, I am sorry. I suppose my kind does not pick up after ourselves as you do. ', 11),
(20003, 'It comes from - harum - what is your word for it? Harrrm. Let us say that my kind does not have bathrooms. Do you understand? ', 0),
(20004, "It would seem so. You and your friends are welcome to as much as you can find. I suppose it's very potent. We don't need to go that often. ", 0),
(20005, "We don't live as quickly as you do, my mushy friend. A healthy giant eats three square meals a decade, although I am known to indulge in a snack every couple of years. We'll go to the bathroom every 15 to 25 years... barring any tummy trouble. ", 0),
(20006, "Haaarrum! I have never had my personal habits scrutinized so. Your kind never ceases to surprise me. Farewell, friend, and good luck with ... whatever it is you are on about. ", 0),
(20007, "I suspect your little green friends are putting you up to no good. Please explain to them that we giants are not to be toyed with.", 0);


DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10780, 10781, 10782, 10783, 10784, 10785, 10786) AND `id` = 0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
(10780, 0, "I brought you something to eat.", 1, 1, 10781),
(10781, 0, "Do you know anything about azsharite?", 1, 1, 10782),
(10782, 0, "Those piles of blue-ish crystals we find on the gorund.", 1, 1, 10783),
(10783, 0, "So the giants have been dropping the azsharite? But where does it come from?", 1, 1, 10784),
(10784, 0, "It's ... your droppings!? And the goblins have been running around scooping it up?", 1, 1, 10785),
(10785, 0, 'How often do you, uh, "go?"', 1, 1, 10786),
(10786, 0, "15 to 25 years? Assistant Greely isn't going to want to hear that!", 1, 1, 10787);

UPDATE `gossip_menu_option` SET `id` = 1, `action_menu_id` = 10788 WHERE (`menu_id` = 10780 AND `option_text` LIKE 'Here%');
UPDATE `gossip_menu_option` SET `id` = 2 WHERE (`menu_id` = 10780 AND `option_text` LIKE 'SQUE%');

-- creature_text
DELETE FROM `creature_text` WHERE `entry` IN (36297, 36077);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(36077, 0, 0, "Move fast! You'll revert to regular-size in just a couple of minutes.", 12, 0, 100, 4, 0, 0, 'Azsharite Experiment Number Two - Greely'),
(36297, 0, 0, "EeeEEEEEEKK!", 12, 0, 100, 4, 0, 0, 'Azsharite Experiment Number Two - Gormungan'),
(36297, 1, 0, "Oh, it was just you. Please don't scare me like that.", 12, 0, 100, 4, 0, 0, 'Azsharite Experiment Number Two - Gormungan');

-- npc spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 36437;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(36437,80804,1,0);

UPDATE `creature_template` SET `spell4` = 68728 WHERE `entry` = 36437;

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36297, 36077);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36297, 36077);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36297, 0, 0, 1, 62, 100, 0, 10786, 0, 0, 0, 33, 36333, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select give questcredit'),
(36297, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 57, 49211, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'Linked with previous event - remove item'),
(36297, 0, 2, 0, 62, 100, 0, 10780, 1, 0, 0, 33, 36420, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select give questcredit'),
(36297, 0, 3, 0, 62, 100, 0, 10780, 2, 0, 0, 33, 36438, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select give questcredit'),
(36297, 0, 4, 0, 62, 100, 0, 10780, 2, 0, 0, 11, 84067, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select knock player back'),
(36297, 0, 5, 0, 62, 100, 0, 10780, 2, 0, 0, 28, 68710, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select remove aura'),
(36297, 0, 6, 0, 62, 100, 0, 10780, 2, 0, 0, 51, 0, 0, 0, 0, 0, 0, 11, 36437, 30, 0, 0, 0, 0, 'On gossip select kill Rocketway Rat'),
(36297, 0, 7, 0, 62, 100, 0, 10780, 2, 0, 0, 1, 0, 1800, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On gossip select say'),
(36297, 0, 8, 0, 52, 100, 0, 0, 36297, 0, 0, 1, 1, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On text over say'),
(36077, 0, 0, 1, 62, 100, 0, 10797, 0, 0, 0, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On gossip select say'),
(36077, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 11, 68710, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'Linked with previous event - cast spell on player'),
(36077, 0, 2, 0, 62, 100, 0, 10797, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select close gossip');

