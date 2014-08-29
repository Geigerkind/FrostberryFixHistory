-- Elemental Bonds
-- Cosmetic
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (53736);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (53736);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
-- Thrall Stoneform effects
(53736, 0, 0, 0, 60, 50, 0, 30000, 30000, 30000, 30000, 11, 100004, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On Update cast little explosion on self');

-- Delete Thralls invisible spell
UPDATE `creature_template_addon` SET `auras` = '99927' WHERE `entry` = 53736;

-- Fire Thrall
UPDATE `creature_template` SET `scale` = 14, `InhabitType` = 4 WHERE `entry` = 53959;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
(53959, '100480');

-- Hyjal Elemental Bionds: The Vow
DELETE FROM `creature_text` WHERE `entry` IN (54168, 54171);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `sound`, `comment`, `BroadcastTextId`) VALUES
(54168, 0, 0, "In the face of this cataclysm, I've seen how truly fleeting our lives can be. And I, for one, will not waste another second of mine.", 12, 100, 1, 24760, 'Thrall', 52802),
(54168, 1, 0, "Aggra... though I was not born on Draenor, I have always tried to honor the traditions of our ancestors...", 12, 100, 1, 24761, 'Thrall', 52804),
(54168, 2, 0, "I stand before you - Go'el, Son of Durotan, Son of Garad... and if you would have me, I would be your life-mate.", 12, 100, 1, 24762, 'Thrall', 52805),
(54168, 3, 0, "For so long as I live, I will stand at your side... as you have stood at mine.", 12, 100, 1, 24763, 'Thrall', 52806),
(54171, 0, 0, "What are you saying, Go'el? What is in your heart?", 12, 100, 6, 24706, 'Aggra', 52803),
(54171, 1, 0, "I stand before you - Aggralan, daughter of Ryal, daughter of Sarrak... and I will proudly be your mate, Go'el... in this world or any other.", 12, 100, 1, 24707, 'Aggra', 52807);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 54168;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 54168;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54168, 0, 0, 0, 20, 100, 1, 29331, 0, 0, 0, 1, 0, 15000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Thrall - On quest reward say text'),
(54168, 0, 1, 0, 52, 100, 1, 0, 54168, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 19, 54171, 20, 0, 0, 0, 0, 'Thrall - On text over make Aggra say text'),
(54168, 0, 2, 0, 52, 100, 1, 0, 54171, 0, 0, 1, 1, 12000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Thrall - On text over say text'),
(54168, 0, 3, 0, 52, 100, 1, 1, 54168, 0, 0, 1, 1, 16500, 0, 0, 0, 0, 19, 54171, 20, 0, 0, 0, 0, 'Thrall - On text over make Aggra say text'),
(54168, 0, 4, 0, 52, 100, 1, 1, 54171, 0, 0, 1, 2, 17500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Thrall - On text over say text'),
(54168, 0, 5, 0, 52, 100, 1, 2, 54168, 0, 0, 1, 3, 20000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Thrall - On text over say text'),
(54168, 0, 6, 0, 52, 100, 1, 3, 54168, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Thrall - On text over kill self'),
(54168, 0, 7, 0, 6, 100, 1, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Thrall - On death respawn self');

-- Deepholm Into constant Earth
DELETE FROM `creature_text` WHERE `entry` = 42656;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `sound`, `comment`, `BroadcastTextId`) VALUES
(42656, 0, 0, "Yes, mortals, your Thrall is here. He has fused with the stone of this place - heart and soul.", 12, 100, 1, 24787, 'Therazane', 52423);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 42656;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 42656;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(42656, 0, 0, 0, 20, 100, 0, 29337, 0, 0, 0, 1, 0, 15000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Therazane - On quest reward say text');

-- Uldum Into Slashing Winds
DELETE FROM `creature_text` WHERE `entry` IN (53524, 53519, 53518);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `sound`, `comment`, `BroadcastTextId`) VALUES
(53524, 0, 0, "Clever fleshling... soaring in-between the winds of fate. Yes, I know the one you seek... the orc-father... Earthbinder...$b$bI sense him nearby - raging within a tempest of his own fear. You may go to him... at your peril.", 12, 100, 0, 25327, 'Cyclonas', 52099),
(53519, 0, 0, "We've found him! But this tempest he's become... I'll try to calm it - to reach him somehow. ", 12, 100, 25, 13006, 'Aggra', 52100),
(53519, 1, 0, "Go'el, it's me - Aggra! Don't you know me?", 12, 100, 5, 24683, 'Aggra', 52102),
(53519, 2, 0, "He's too far gone! We have to keep trying!", 12, 100, 22, 24684, 'Aggra', 52104),
(53519, 2, 1, "You did what you thought best, Go'el! Fight these doubts! They're devouring your heart!", 12, 100, 22, 24685, 'Aggra', 52106),
(53519, 2, 2, "You are Go'el, Son of Durotan and Draka! Rightful Warchief of the Horde! You are the orc who won my heart. Remember WHO YOU ARE!", 12, 100, 22, 24687, 'Aggra', 52110),
(53519, 2, 3, "Be still, my love. Calm your mind. You became a slave to your duty. But being true to your heart is how you'll fulfill that duty... to your people... and to me.", 12, 100, 1, 24688, 'Aggra', 52112),
(53519, 3, 0, "The Twilight Curse is shifting Go'el between elemental states! Before he vanished, he took on the aspect of water. We must hurry to him...", 12, 100, 5, 24689, 'Aggra', 52531),
(53518, 0, 0, "FAILED. I have failed this world...$b$bThe elements... will not speak to me. The Earthen Ring... has lost faith in my leadership. My weakness... has delivered Azeroth... into oblivion....", 12, 100, 5, 24747, 'Thrall', 52101),
(53518, 0, 1, "Oblivion... nothing... but oblivion...", 22, 100, 5, 24748, 'Thrall', 52103),
(53518, 0, 2, "I have... failed the Horde... as Warchief...$b$bGarrosh... will lead it to ruin...$b$bMy people... to ruin. Cairne, my brother... why did I not listen?", 12, 100, 5, 24749, 'Thrall', 52105),
(53518, 0, 3, "Why did I not listen?", 22, 100, 5, 24750, 'Thrall', 52107);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (53524, 53519, 53518);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 53518;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 53524 AND `id` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 53519 AND `id` >= 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53524, 0, 2, 0, 20, 100, 0, 29337, 0, 0, 0, 1, 0, 30000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Cyclonas - On quest reward say text'),
(53519, 0, 2, 0, 1, 100, 1, 1, 1, 1, 1, 1, 0, 8000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On OOC say text'),
(53519, 0, 3, 0, 52, 100, 1, 0, 53519, 0, 0, 1, 1, 8000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text'),
(53519, 0, 4, 0, 60, 100, 0, 35000, 35000, 35000, 35000, 1, 2, 20000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On update say text'),
(53519, 0, 5, 0, 20, 100, 0, 29327, 0, 0, 0, 1, 4, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On quest reward say text'),
(53519, 0, 6, 0, 60, 100, 1, 175000, 175000, 1, 1, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On update kill self'),
(53519, 0, 7, 0, 6, 100, 1, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On death respawn self'),
(53518, 0, 0, 0, 60, 100, 0, 25000, 25000, 25000, 25000, 1, 0, 20000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Thrall - On update say text');

-- Abyssal Depths Event
DELETE FROM `creature_text` WHERE `entry` IN (53677, 53652);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `sound`, `comment`, `BroadcastTextId`) VALUES
(53677, 0, 0, "Greetings, travelers. The tides of destiny have brought you far from the bright world above. I know what it is you seek - and it lies there before you...", 12, 100, 0, 24782, 'Hydros', 52546),
(53677, 1, 0, "Your world-shaman has become a vortex of longing and desire. See how his heart devours everything within its proximity? Tread lightly, traveler, lest you too, be consumed.", 12, 100, 0, 24783, 'Hydros', 52547),
(53677, 2, 0, "Your world-shaman is already lost to the dark fathoms. He exists now only to consume - tortured by the currents of the life he longed for - but never knew.", 12, 100, 0, 24784, 'Hydros', 52549),
(53677, 3, 0, "You've done the impossible, shaman. You have stilled the vortex within him without losing yourself, in turn. Your love for him... must be very great. ", 12, 100, 0, 24785, 'Hydros', 52197),
(53677, 4, 0, "His aspect shifts once again! You are losing him!", 12, 100, 0, 24786, 'Hydros', 52199),
(53652, 0, 0, "We arrived just in time! Go'el's spirit has become so unstable, it could collapse upon itself if we don't act fast.", 12, 100, 5, 24726, 'Aggra', 52548),
(53652, 1, 0, "The water here is disturbed... what is happening here?", 12, 100, 5, 24725, 'Aggra', 52545),
(53652, 1, 1, "Hear me, Go'el! You ARE NOT alone! I'm here with you - I will NOT let you go! ", 12, 100, 22, 24731, 'Aggra', 52286),
(53652, 1, 2, "Oh, Go'el, hold on! I WILL free you! And you'll HAVE this life, I swear it! ", 12, 100, 22, 24734, 'Aggra', 52287),
(53652, 1, 3, "He must embrace them and find balance... or this curse will never end. ", 12, 100, 5, 24738, 'Aggra', 52288),
(53652, 1, 4, "Fight this, Go'el! You've got to snap out of it!", 12, 100, 22, 24736, 'Aggra', 52289),
(53652, 2, 0, "We will save him, $n. We MUST.", 12, 100, 22, 24727, 'Aggra - Quest accept', 52550),
(53652, 3, 0, "I need... the world... needs him whole once again. But he's always placed the needs of others before his own. How long has he suppressed these feelings - these desires?", 12, 100, 5, 24737, 'Aggra - Quest reward', 52198),
(53652, 4, 0, "Go'el!", 12, 100, 22, 24739, 'Aggra - Quest reward', 52200);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (53677, 53652);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 53677;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 53652 AND `id` >= 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53677, 0, 0, 0, 1, 100, 1, 1, 1, 1, 1, 1, 0, 15000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Hydros - On OOC say text'),
(53677, 0, 1, 0, 52, 100, 1, 0, 53677, 0, 0, 1, 1, 17000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Hydros - On text over say text'),
(53677, 0, 2, 0, 52, 100, 1, 1, 53677, 0, 0, 1, 0, 12000, 0, 0, 0, 0, 19, 53652, 50, 0, 0, 0, 0, 'Hydros - On text over make Aggra say text'),
(53677, 0, 3, 0, 52, 100, 1, 0, 53652, 0, 0, 1, 2, 15000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Hydros - On text over say text'),
(53677, 0, 4, 0, 60, 100, 1, 175000, 175000, 1, 1, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Hydros - On update kill self'),
(53677, 0, 5, 0, 6, 100, 1, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Hydros - On death respawn self'),
(53652, 0, 2, 0, 60, 100, 0, 22000, 22000, 22000, 22000, 1, 1, 22000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On Update say text'),
(53652, 0, 3, 0, 19, 100, 0, 29328, 0, 0, 0, 1, 2, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On quest accept say text'),
(53652, 0, 4, 0, 20, 100, 1, 29328, 0, 0, 0, 1, 3, 14000, 0, 0, 0, 0, 19, 53677, 50, 0, 0, 0, 0, 'Aggra - On quest reward make Hydros say text'),
(53652, 0, 5, 0, 52, 100, 1, 3, 53677, 0, 0, 1, 3, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text'),
(53652, 0, 6, 0, 52, 100, 1, 3, 53652, 0, 0, 1, 4, 8000, 0, 0, 0, 0, 19, 53677, 50, 0, 0, 0, 0, 'Aggra - On text over make Hydros say text'),
(53652, 0, 7, 0, 52, 100, 1, 4, 53677, 0, 0, 1, 4, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text'),
(53652, 0, 8, 0, 60, 100, 1, 175000, 175000, 1, 1, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On update kill self'),
(53652, 0, 9, 0, 6, 100, 1, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On death respawn self');

-- Molten Front
DELETE FROM `creature_text` WHERE `entry` IN (53925, 53959);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `sound`, `comment`, `BroadcastTextId`) VALUES
(53925, 0, 0, "This realm is more terrible than I'd imagined. Even now, I can feel the rage of this place pressing down on me.", 12, 100, 0, 24708, 'Aggra', 52654),
(53925, 1, 0, "We won't have much time before they're onto us. Let's begin.", 12, 100, 274, 24712, 'Aggra', 52655),
(53925, 2, 0, "There! I see him, wreathed in flame! I can feel waves of fury radiating from his core. Such rage... his anger alone could burn us to cinders!", 12, 100, 25, 24711, 'Aggra', 52656),
(53925, 3, 0, "Protect me and I'll place guardian totems all around us.", 12, 100, 0, 24710, 'Aggra', 52657),
(53925, 4, 0, "Kill elementals near Aggra's Air Totem, in the west!", 41, 100, 0, 0, 'Aggra', 52597),
(53925, 5, 0, "Kill elementals near Aggra's Water Totem, in the north!", 41, 100, 0, 0, 'Aggra', 52598),
(53925, 6, 0, "Kill elementals near Aggra's Earth Totem, in the east!", 41, 100, 0, 0, 'Aggra', 52599),
(53925, 7, 0, "Kill elementals near Aggra's Fire Totem, near Thrall!", 41, 100, 0, 0, 'Aggra', 52600),
(53925, 8, 0, "He's absolutely raging!  So much anger, so much pain... and he had the strength to suppress it all these years...", 12, 100, 0, 24717, 'Aggra', 52604),
(53925, 9, 0, "Go'el! Go'el, you must stop! Your anger is JUST - but it will only consume you! Fight it down, or we're ALL LOST!", 12, 100, 0, 24721, 'Aggra', 52611),
(53925, 10, 0, "Can you even hear me???", 12, 100, 0, 0, 'Aggra', 52613),
(53959, 0, 0, "MY PARENTS... MURDERED BEFORE I COULD KNOW THEM... BETRAYED!", 12, 100, 0, 24764, 'Thrall', 52601),
(53959, 1, 0, "GUL'DAN! IF I MUST BURN MY WAY ACROSS THE AFTERLIFE, I WILL FIND YOU IN WHATEVER HELL YOU'VE HIDDEN!", 12, 100, 0, 0, 'Thrall', 52602),
(53959, 2, 0, "I WILL HAVE MY REVENGE! DO YOU HEAR ME???", 12, 100, 0, 0, 'Thrall', 52603),
(53959, 3, 0, "RAISED AS A SLAVE... TO KILL FOR HUMAN AMUSEMENT...", 12, 100, 0, 24765, 'Thrall', 52605),
(53959, 4, 0, "DEATH WAS TOO GOOD FOR BLACKMOORE. ANYONE WHO WOULD ENSLAVE ANOTHER... DESERVES WORSE THAN DEATH!", 12, 100, 0, 0, 'Thrall', 52606),
(53959, 5, 0, "ALL ARE GUILTY! ALL MUST PAY!", 12, 100, 0, 0, 'Thrall', 52607),
(53959, 6, 0, "KING VARIAN... YOU WISH TO MAKE WAR ON MY PEOPLE? YOU SHALL HAVE YOUR WAR, HUMAN!", 12, 100, 0, 24766, 'Thrall', 52608),
(53959, 7, 0, "YOU WILL SEE THE FURY OF THE HORDE RAGE THROUGH YOUR CITIES! YOU WILL SEE YOUR THRONE SPLIT IN TWO! THIS I SWEAR!!!", 12, 100, 0, 0, 'Thrall', 52609),
(53959, 8, 0, "GARROSH... Garrosh...", 12, 100, 0, 24767, 'Thrall', 52610),
(53959, 9, 0, "CAIRNE WAS MY BROTHER!!!!!!!!!", 12, 100, 0, 0, 'Thrall', 52612);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (53925, 53959);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 53925;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53925, 0, 0, 0, 19, 100, 1, 29330, 0, 0, 0, 1, 0, 9000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On quest accept say text 1'),
(53925, 0, 1, 0, 52, 100, 1, 0, 53925, 0, 0, 1, 1, 5500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 2'),
(53925, 0, 2, 0, 52, 100, 1, 1, 53925, 0, 0, 1, 2, 14000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 3'),
(53925, 0, 3, 0, 52, 100, 1, 2, 53925, 0, 0, 1, 3, 5500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 4'),
(53925, 0, 4, 17, 52, 100, 1, 3, 53925, 0, 0, 1, 0, 6100, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 1'),
(53925, 0, 5, 0, 52, 100, 1, 0, 53959, 0, 0, 1, 1, 8500, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 2'),
(53925, 0, 6, 0, 52, 100, 1, 1, 53959, 0, 0, 1, 2, 5500, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 3'),
(53925, 0, 7, 0, 52, 100, 1, 2, 53959, 0, 0, 1, 8, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 9'),
(53925, 0, 8, 18, 52, 100, 1, 8, 53925, 0, 0, 1, 3, 5500, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 4'),
(53925, 0, 9, 0, 52, 100, 1, 3, 53959, 0, 0, 1, 4, 9400, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 5'),
(53925, 0, 10, 0, 52, 100, 1, 4, 53959, 0, 0, 1, 5, 6000, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 6'),
(53925, 0, 11, 0, 52, 100, 1, 5, 53959, 0, 0, 1, 6, 9500, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 7'),
(53925, 0, 12, 19, 52, 100, 1, 6, 53959, 0, 0, 1, 7, 10300, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 8'),
(53925, 0, 13, 0, 52, 100, 1, 7, 53959, 0, 0, 1, 8, 6000, 0, 0, 0, 0, 19, 53959,90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 9'),
(53925, 0, 14, 0, 52, 100, 1, 8, 53959, 0, 0, 1, 9, 5500, 0, 0, 0, 0, 19, 53959, 90, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 10'),
(53925, 0, 15, 0, 52, 100, 1, 9, 53959, 0, 0, 1, 9, 9300, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 10'),
(53925, 0, 16, 20, 52, 100, 1, 9, 53925, 0, 0, 1, 10, 12000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 11'),
(53925, 0, 17, 0, 61, 100, 1, 0, 0, 0, 0, 84, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - Linked with ID 3 - say text 5'),
(53925, 0, 18, 0, 61, 100, 1, 0, 0, 0, 0, 84, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - Linked with ID 3 - say text 6'),
(53925, 0, 19, 0, 61, 100, 1, 0, 0, 0, 0, 84, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - Linked with ID 3 - say text 7'),
(53925, 0, 20, 0, 61, 100, 1, 0, 0, 0, 0, 84, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - Linked with ID 3 - say text 8'),
(53925, 0, 21, 0, 52, 100, 1, 10, 53925, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over kill self'),
(53925, 0, 22, 0, 6, 100, 1, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On death respawn');

-- Molten Front after event
DELETE FROM `creature_text` WHERE `entry` IN (53960, 55083);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `sound`, `comment`, `BroadcastTextId`) VALUES
(53960, 0, 0, "I am... alive...", 12, 100, 0, 24768, 'Thrall', 52621),
(53960, 1, 0, "Aggra, my heart... you never gave up on me. I owe you my life... everything that I am.", 12, 100, 0, 24769, 'Thrall', 52623),
(53960, 2, 0, "For I see now what I had become, so weighted down by doubt and anger. All my life, I had CHOSEN to be a slave to fear...", 12, 100, 0, 0, 'Thrall', 52624),
(53960, 3, 0, "...a THRALL.", 12, 100, 0, 0, 'Thrall', 52625),
(53960, 4, 0, "Fandral sought to use that weakness against me...", 12, 100, 0, 24770, 'Thrall', 52626),
(53960, 5, 0, "But what he and his Twilight Masters never understood is that the elements do not exist to rage and war... they exist to bring harmony. Within the world... and within us.", 12, 100, 0, 0, 'Thrall', 52627),
(53960, 6, 0, "I have seen the TRUTH - and my chains have been broken.", 12, 100, 0, 0, 'Thrall', 52628),
(53960, 7, 0, "Now, I am all that I once was... and more.", 12, 100, 0, 24771, 'Thrall', 52629),
(53960, 8, 0, "Thank you, my friend. I can never repay your service or your friendship.", 12, 100, 0, 24772, 'Thrall', 52632),
(53960, 9, 0, "Meet us back at the World Tree. There's something... I want you to witness.", 12, 100, 0, 0, 'Thrall', 52633),
(55083, 0, 0, "Go'el, I thought I'd lost you...", 12, 100, 0, 24722, 'Aggra', 52622),
(55083, 1, 0, "Well, you're certainly more talkative...", 12, 100, 0, 24723, 'Aggra', 52630),
(55083, 2, 0, "But we must hurry back to the World Tree! The Dragon Aspects are waiting...", 12, 100, 0, 24724, 'Aggra', 52631),
(55083, 3, 0, "...and you, my love, have a world to save.", 12, 100, 0, 0, 'Aggra', 52773);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (53960, 55083);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 55083;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(55083, 0, 0, 0, 19, 100, 1, 29331, 0, 0, 0, 1, 0, 4000, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On quest accept make Thrall say text 1'),
(55083, 0, 1, 0, 52, 100, 1, 0, 53960, 0, 0, 1, 0, 4500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 1'),
(55083, 0, 2, 0, 52, 100, 1, 0, 55083, 0, 0, 1, 1, 12000, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 2'),
(55083, 0, 3, 0, 52, 100, 1, 1, 53960, 0, 0, 1, 2, 15200, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 3'),
(55083, 0, 4, 0, 52, 100, 1, 2, 53960, 0, 0, 1, 3, 4000, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 4'),
(55083, 0, 5, 0, 52, 100, 1, 3, 53960, 0, 0, 1, 4, 5100, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 5'),
(55083, 0, 6, 0, 52, 100, 1, 4, 53960, 0, 0, 1, 5, 17500, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 6'),
(55083, 0, 7, 0, 52, 100, 1, 5, 53960, 0, 0, 1, 6, 7500, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 7'),
(55083, 0, 8, 0, 52, 100, 1, 6, 53960, 0, 0, 1, 7, 6000, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 8'),
(55083, 0, 9, 0, 52, 100, 1, 7, 53960, 0, 0, 1, 1, 2800, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 2'),
(55083, 0, 10, 0, 52, 100, 1, 1, 55083, 0, 0, 1, 2, 5600, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 3'),
(55083, 0, 11, 0, 52, 100, 1, 2, 55083, 0, 0, 1, 3, 3200, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text 4'),
(55083, 0, 12, 0, 52, 100, 1, 3, 55083, 0, 0, 1, 8, 3200, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 9'),
(55083, 0, 13, 0, 52, 100, 1, 8, 53960, 0, 0, 1, 9, 10000, 0, 0, 0, 0, 19, 53960, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text 10'),
(55083, 0, 14, 0, 52, 100, 1, 9, 53960, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over kill self'),
(55083, 0, 15, 0, 6, 100, 1, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On death respawn');

-- Deepholm Thrall in stone event
DELETE FROM `creature_text` WHERE `entry` IN (53750, 53736);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `sound`, `comment`, `BroadcastTextId`) VALUES
(53750, 0, 0, "There's too many of them! I don't know how long we can hold out! Go'el, now would be a good time to wake up!", 12, 100, 0, 25696, 'Aggra', 52300),
(53750, 1, 0, "Did he just...? Go'el, can you hear me? We need your help! Do something!", 12, 100, 0, 25697, 'Aggra', 52302),
(53750, 2, 0, "GO'EL! Pull it together or we're all going to DIE!", 12, 100, 0, 25698, 'Aggra', 52303),
(53750, 3, 0, "He did NOT just say that!", 12, 100, 0, 25699, 'Aggra', 52305),
(53750, 4, 0, "Damn you, Go'el - WAKE UP! Don't let it end like this! We've come too far to fail now!", 12, 100, 0, 25700, 'Aggra', 52306),
(53750, 5, 0, "Oh, don't you tell ME to be patient, you green-skinned...", 12, 100, 0, 25701, 'Aggra', 52308),
(53750, 6, 0, "You're almost home, my love. Our time is so brief. You will change again, Go'el - but I will find you! I'll NEVER give up on you!", 12, 100, 0, 25702, 'Aggra', 52311),
(53736, 0, 0, "We are patient.", 12, 100, 0, 25696, 'Thrall', 52301),
(53736, 1, 0, "We are patient.", 12, 100, 0, 25696, 'Thrall', 52304),
(53736, 2, 0, "We are patient.", 12, 100, 0, 25696, 'Thrall', 52307),
(53736, 3, 0, "NOW. AWAKEN.", 12, 100, 0, 25696, 'Thrall', 52309),
(53736, 4, 0, "Aggra... I heard your voice... calling me back...$b$bWhere are we?", 12, 100, 0, 25696, 'Thrall', 52310),
(53736, 5, 0, "Aggra? Aggra! I can't hear-", 12, 100, 0, 25696, 'Thrall', 52311);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 53750 AND `id` >= 3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53750, 0, 3, 0, 1, 100, 1, 1, 1, 1, 1, 1, 0, 8000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On OOC say text'),
(53750, 0, 4, 0, 52, 100, 1, 0, 53750, 0, 0, 1, 0, 2500, 0, 0, 0, 0, 19, 53736, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text'),
(53750, 0, 5, 0, 52, 100, 1, 0, 53736, 0, 0, 1, 1, 7200, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text'),
(53750, 0, 6, 0, 52, 100, 1, 1, 53750, 0, 0, 1, 2, 4000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text'),
(53750, 0, 7, 0, 52, 100, 1, 2, 53750, 0, 0, 1, 1, 2500, 0, 0, 0, 0, 19, 53736, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text'),
(53750, 0, 8, 0, 52, 100, 1, 1, 53736, 0, 0, 1, 3, 2800, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text'),
(53750, 0, 9, 0, 52, 100, 1, 3, 53750, 0, 0, 1, 4, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text'),
(53750, 0, 10, 0, 52, 100, 1, 4, 53750, 0, 0, 1, 2, 2500, 0, 0, 0, 0, 19, 53736, 50, 0, 0, 0, 0, 'Aggra - On text over make Thrall say text'),
(53750, 0, 11, 0, 52, 100, 1, 2, 53736, 0, 0, 1, 5, 16000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over say text'),
(53750, 0, 12, 0, 52, 100, 1, 5, 53750, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On text over kill self'),
(53750, 0, 13, 0, 6, 100, 1, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Aggra - On death respawn');

-- Phasing
-- Hyjal
DELETE FROM `phase_definitions` WHERE `zoneId` = 616 AND `entry` IN (20, 21, 22);
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `flags`, `comment`) VALUES
(616, 20, 2048, 0, 1, 719, 0, 'Hyjal - Special Phase 1 - Elemental Bonds'),
(616, 21, 4096, 0, 1, 719, 0, 'Hyjal - Special Phase 2 - Elemental Bonds'),
(616, 22, 8192, 0, 1, 719, 0, 'Hyjal - Special Phase 3 - Elemental Bonds');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 25 AND `SourceGroup` = 616 AND `SourceEntry` IN (20, 21, 22);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`) VALUES
(25, 616, 21, 0, 8, 29335, 1),
(25, 616, 21, 0, 28, 29439, 0),
(25, 616, 21, 1, 8, 29335, 1),
(25, 616, 21, 1, 28, 29440, 0),
(25, 616, 21, 2, 8, 29335, 1),
(25, 616, 21, 2, 9, 29440, 0),
(25, 616, 21, 3, 8, 29335, 1),
(25, 616, 21, 3, 8, 29439, 0),
(25, 616, 21, 4, 8, 29335, 1),
(25, 616, 21, 4, 8, 29440, 0),
(25, 616, 22, 0, 28, 29331, 0),
(25, 616, 22, 1, 8, 29331, 0);

UPDATE `creature` SET `phasemask` = 4096 WHERE `guid` IN (141150, 141149);
UPDATE `creature` SET `phasemask` = 8192 WHERE `guid` IN (141158, 141159, 141160, 141161, 141162, 141163, 141164, 141165, 141166, 141171, 141172);

UPDATE `creature` SET `phasemask` = 16383 WHERE `zone` = 616 AND `phasemask` IN (2047, 1);
UPDATE `gameobject` SET `phasemask` = 16383 WHERE `zone` = 616 AND `phasemask` IN (2047, 1);

-- Fix messed up things
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`) VALUES
(25, 616, 1, 1, 28, 25324, 0);

-- Uldum
DELETE FROM `phase_definitions` WHERE `zoneId` = 5034;
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `flags`, `comment`) VALUES
(5034, 1, 2, 0, 1, 719, 0, 'Uldum Phase 2 (Elemental Bonds)');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 25 AND `SourceGroup` = 5034;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`) VALUES
(25, 5034, 1, 0, 8, 29336, 1),
(25, 5034, 1, 0, 8, 29439, 0),
(25, 5034, 1, 1, 8, 29336, 1),
(25, 5034, 1, 1, 8, 29440, 0);

UPDATE `creature` SET `phasemask` = 2 WHERE `id` IN (53536, 53987, 53524, 53519, 44665, 44664, 44663, 44659, 53516, 53530, 53518);
UPDATE `gameobject` SET `phasemask` = 2 WHERE `id` IN (208859, 208832, 208858);

UPDATE `creature` SET `phasemask` = 3 WHERE `zone` = 5034 AND `id` NOT IN (53536, 53987, 53524, 53519, 44665, 44664, 44663, 44659, 53516, 53530, 53518);
UPDATE `gameobject` SET `phasemask` = 3 WHERE `zone` = 5034 AND `id` NOT IN (208859, 208832, 208858); 

-- Abyssal Depths
DELETE FROM `phase_definitions` WHERE `zoneId` = 5145;
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `flags`, `comment`) VALUES
(5145, 1, 2, 0, 1, 719, 0, 'Abyysal Depths Phase 2 (Elemental Bonds)');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 25 AND `SourceGroup` = 5145;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`) VALUES
(25, 5145, 1, 0, 8, 29337, 1),
(25, 5145, 1, 0, 8, 29439, 0),
(25, 5145, 1, 1, 8, 29337, 1),
(25, 5145, 1, 1, 8, 29440, 0);

UPDATE `creature` SET `phasemask` = 2 WHERE `id` IN (53652, 53677, 53646, 53647);

UPDATE `creature` SET `phasemask` = 3 WHERE `zone` = 5145 AND `id` NOT IN (53652, 53677, 53646, 53647);
UPDATE `gameobject` SET `phasemask` = 3 WHERE `zone` = 5145;

-- Deepholm
DELETE FROM `phase_definitions` WHERE `zoneId` = 5042;
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `flags`, `comment`) VALUES
(5042, 1, 2, 0, 1, 719, 0, 'Deepholm Phase 2 (Elemental Bonds)');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 25 AND `SourceGroup` = 5042;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`) VALUES
(25, 5042, 1, 0, 8, 29338, 1),
(25, 5042, 1, 0, 8, 29439, 0),
(25, 5042, 1, 1, 8, 29338, 1),
(25, 5042, 1, 1, 8, 29440, 0);

UPDATE `creature` SET `phasemask` = 2 WHERE `id` IN (53738, 53750, 53736, 53739, 53894);

UPDATE `creature` SET `phasemask` = 3 WHERE `zone` = 5042 AND `id` NOT IN (53738, 53750, 53736, 53739, 53894, 44663, 44665, 44659, 44664);
UPDATE `gameobject` SET `phasemask` = 3 WHERE `zone` = 5042;

-- Molten Front
DELETE FROM `phase_definitions` WHERE `zoneId` = 5733 AND `entry` IN (11, 12, 13);
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `flags`, `comment`) VALUES
(5733, 11, 256, 0, 861, 719, 0, 'Molten Front Phase 256 (Elemental Bonds)'),
(5733, 12, 512, 0, 861, 719, 0, 'Molten Front Phase 512 (Elemental Bonds)'),
(5733, 13, 2048, 0, 861, 719, 0, 'Molten Front Phase 2048 (Elemental Bonds)');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 25 AND `SourceGroup` = 5733 AND `SourceEntry` IN (11, 12, 13);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`) VALUES
(25, 5733, 11, 0, 28, 29338, 0),
(25, 5733, 12, 0, 8, 29338, 0),
(25, 5733, 12, 0, 8, 29330, 1),
(25, 5733, 13, 0, 8, 29330, 0),
(25, 5733, 13, 0, 8, 29331, 1);

UPDATE `creature` SET `phasemask` = 256 WHERE `id` = 54014;
UPDATE `creature` SET `phasemask` = 512 WHERE `id` IN (53928, 53929, 53925, 53959, 55079, 55080, 55081, 55082);