-- When Science Attacks (ID: 14308)
-- conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 68283 AND `ElseGroup` IN (0,1));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,68283,0,0,31,0,3,36025,0,0,0,0,'','Spell implecit target secret lab fires'),
(13,1,68283,0,0,31,0,3,36025,0,0,0,0,'','Spell implecit target secret lab fires'),
(13,0,68283,0,1,31,0,3,36061,0,0,0,0,'','Spell implecit target research intern'),
(13,1,68283,0,1,31,0,3,36061,0,0,0,0,'','Spell implecit target research intern');

-- creature addon
DELETE FROM `creature_tempalte_addon` WHERE `entry` = 36025;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(36025,0,0,0,1,0,'52855 65734 68277');

-- sai
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36025, 36061);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36025, 36061);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36061, 0, 0, 0, 8, 100, 1, 68283, 1, 1, 1, 33, 36061, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On spellhit give questcredit'),
(36061, 0, 1, 0, 8, 100, 1, 68283, 1, 1, 1, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit forec despawn'),
(36025, 0, 0, 0, 8, 100, 1, 68283, 1, 1, 1, 33, 36025, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On spellhit give questcredit'),
(36025, 0, 1, 0, 8, 100, 1, 68283, 1, 1, 1, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit forec despawn');
