-- Achievement - Full Caravan (ID: 5442)
-- criteria update
DELETE FROM `achievement_criteria_dbc` WHERE `id` IN (15624, 17428);
INSERT INTO `achievement_criteria_dbc` (`ID`, `achievement`, `type`, `value1`, `value2`, `additionalReqType1`, `additionalReqValue1`, `additionalReqType2`, `additionalReqValue2`, `completionFlag`, `timedCriteriaStartType`, `timeCriteriaMiscId`, `timeLimit`, `showOrder`, `additionalConditionType1`, `additionalConditionType2`, `additionalConditionType3`, `additionalConditionValue1`, `additionalConditionValue2`, `additionalConditionValue3`) VALUES
(15624,5442,27,27370,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0),
(17428,5442,28,98914,1,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0);

-- conditions
DELETE FROM `conditions` WHERE `SourceGroup` = 12081;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(14,12081,16956,0,0,17,0,5442,0,0,1,0,0,'','Show gossip menu if player has not achievment'),
(14,12081,16958,0,0,17,0,5442,0,0,0,0,0,'','Show gossip menu if player has achievment'),
(15,12081,0,0,0,17,0,5442,0,0,1,0,0,'','Show gossip if player has not achievment');

-- gossip stuff
DELETE FROM `gossip_menu` WHERE `entry` = 46022;
INSERT INTO `gossip_menu` VALUES
(46022, 21000);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 12081;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
(12081, 0, "You know, if you're looking for a place to hide out, you're free to join us in our caravan.", 1, 1, 46022);

DELETE FROM `npc_text` WHERE `id` = 21000;
INSERT INTO `npc_text` (`id`, `text0_0`) VALUES
(21000, "You present an interesting option. I'll take that into consideration.
Alright. I've considered it. Sure. I'll Join you. I've probably stayed in Light's Hope Chapel for too long anyhow. Like a gnome at a urinal. I'm gonna have to stay on my toes! Heh heh!");

-- creature / SAI
DELETE FROM `creature_template_addon` WHERE `entry` = 46022;
DELETE FROM `creature_addon` WHERE `guid` = 40033;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 46022;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 46022;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46022, 0, 0, 0, 62, 100, 0, 12081, 0, 0, 0, 11, 98914, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 'On gossip select cast 98914 on invoker');