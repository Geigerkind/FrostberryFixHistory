-- quest combat training 26938
-- summon enthralled val'kyr spell: 84198 despawn: 84191 entryid: 45080
-- Lindsay Havensun: 44466
-- forsaken trooper: 45085
-- Dummy Target Spell: 54694
-- point emote: 25
-- kneel emote: 16

-- Updating AIName
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 45085;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 44492;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 44466;

-- Update Quest
UPDATE `quest_template` SET `flags` = 8 WHERE `id` = 26938;

-- Adding creature_text
DELETE FROM `creature_text` WHERE `id` = 0 and `entry` IN (45085, 44492);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(45085, 0, 0, 'As you wish!', 12, 0, 100, 16, 0, 0, 'Forsaken trooper - combat training'),
(44492, 0, 0, 'Follow me, Forsaken!', 12, 0, 100, 16, 0, 0, 'Enthralled valkyr - combat training');

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 44466 AND `id` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 44492 AND `id` IN (0,1);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 45085 AND `id` IN (0,1,2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(44466, 0, 0, 19, 100, 0, 26938, 0, 0, 0, 85, 84198, 7, 7, 0, 0, 'On target accepted quest - invoker cast - summon enthralled valkyr'), 
(44492, 0, 0, 1, 100, 1, 1, 1, 1, 1, 84, 0, 0, 1, 0, 0, 'On OCC - play emote and say text'),
(44492, 0, 1, 1, 100, 1, 1, 1, 1, 1, 11, 54694, 7, 11, 45085, 35, 'On OOC - target forsaken trooper within 35y range - cast dummy spell'),
(45085, 0, 0, 8, 100, 1, 54694, 1, 2000, 2000, 11, 84177, 7, 18, 100, 0, 'On spellhit - target player - give questcredit'),
(45085, 0, 1, 8, 100, 1, 54694, 1, 2000, 2000, 84, 0, 0, 1, 0, 0, 'On spellhit - play emote and say text'),
(45085, 0, 2, 8, 100, 1, 54694, 1, 2000, 2000, 41, 2500, 0, 1, 0, 0, 'On spellhit - target self - despawn');


