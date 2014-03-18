-- quest strategic cuts (ID: 28434/28246)
-- spell area
DELETE FROM `spell_area` WHERE `spell` = 89261 AND `area` = 5652;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(89261, 5652, 28432, 1, 0, 0, 0, 2, 1, 74, 11),
(89261, 5652, 28239, 1, 0, 0, 0, 2, 1, 74, 11);

-- creature
DELETE FROM `gossip_menu` WHERE `entry` = 48100;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(48100, 21);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 48100;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES 
(48100, 0, 0, 'Use the Razor-Sharp Scorpid Barb.', 1, 1),
(48100, 1, 0, 'Use the Razor-Sharp Scorpid Barb.', 1, 1);

UPDATE `creature_template` SET `gossip_menu_id` = 48100, `AIName` = 'SmartAI' WHERE `entry` IN (48100, 48099, 9176);

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (48100, 48099);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 9176 AND `id` IN (3,4,5,6);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES 
(48100, 0, 0, 62, 100, 0, 48100, 0, 33, 48100, 0, 7, 'On gossip select - give questcredit'),
(48100, 0, 1, 62, 100, 0, 48100, 0, 37, 0, 0, 1, 'On gossip select - kill self'),
(48100, 0, 2, 62, 100, 0, 48100, 1, 33, 48100, 0, 7, 'On gossip select - give questcredit'),
(48100, 0, 3, 62, 100, 0, 48100, 1, 37, 0, 0, 1, 'On gossip select - kill self'),
(48099, 0, 0, 62, 100, 0, 48100, 0, 33, 48099, 0, 7, 'On gossip select - give questcredit'),
(48099, 0, 1, 62, 100, 0, 48100, 0, 37, 0, 0, 1, 'On gossip select - kill self'),
(48099, 0, 2, 62, 100, 0, 48100, 1, 33, 48099, 0, 7, 'On gossip select - give questcredit'),
(48099, 0, 3, 62, 100, 0, 48100, 1, 37, 0, 0, 1, 'On gossip select - kill self'),
(9176, 0, 3, 62, 100, 0, 48100, 0, 33, 9176, 0, 7, 'On gossip select - give questcredit'),
(9176, 0, 4, 62, 100, 0, 48100, 0, 37, 0, 0, 1, 'On gossip select - kill self'),
(9176, 0, 5, 62, 100, 0, 48100, 1, 33, 9176, 0, 7, 'On gossip select - give questcredit'),
(9176, 0, 6, 62, 100, 0, 48100, 1, 37, 0, 0, 1, 'On gossip select - kill self');

-- conditon
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 48100;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,48100,0,0,0,9,0,28434,0,0,0,0,0,'','Need quest for gossip to be shown'),
(15,48100,1,0,0,9,0,28246,0,0,0,0,0,'','Need quest for gossip to be shown');