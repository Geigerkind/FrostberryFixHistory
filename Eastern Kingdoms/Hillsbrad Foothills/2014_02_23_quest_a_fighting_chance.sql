-- quest A fighting chance (ID: 28495)
-- condition
DELETE FROM `conditions` WHERE `SourceEntry` = 90679;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,1,90679,0,0,31,0,3,48187,0,0,0,0,'','spell implecit target');

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 48187 AND `id` IN (3,4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48187, 0, 3, 8, 100, 1, 90679, 1, 1, 1, 33, 48684, 0, 0, 0, 0, 0, 18, 40, 0, 0, 0, 0, 0, 'On spellhit - give questcredit'),
(48187, 0, 4, 8, 100, 1, 90679, 1, 1, 1, 41, 5000, 0, 0, 0, 0, 0, 18, 40, 0, 0, 0, 0, 0, 'On spellhit - despawn');
