-- it rolls downhills (ID: 12673)
-- creature
UPDATE `creature_template` SET `spell4` = 52245, `AIName` = 'SmartAI' WHERE `entry` = 28750;

-- waypoints
DELETE FROM `waypoints` WHERE `entry` = 28750 AND `pointid` IN (1,2,3,4,5,6);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(28750, 1, 6172.5, -2070.5, 233, 'Horde: It rolls downhills 1'),
(28750, 2, 6173.2, -2055.55, 235.3, 'Horde: It rolls downhills 2'),
(28750, 3, 6174, -2050, 239.1, 'Horde: It rolls downhills 3'),
(28750, 4, 6174.4, -2039.3, 241.32, 'Horde: It rolls downhills 4'),
(28750, 5, 6174.8, -2029, 243.6, 'Horde: It rolls downhills 5'),
(28750, 6, 6175.1, -2021.6, 245.3, 'Horde: It rolls downhills 6');

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` = 28750;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `comment`) VALUES 
(28750, 0, 0, 8, 100, 0, 52245, 1, 1, 1, 53, 1, 28750, 0, 12673, 0, 0, 1, 0, 0, 'On spellhit - start wp'),
(28750, 0, 1, 40, 100, 0, 6, 0, 0, 0, 33, 28740, 0, 0, 0, 0, 0, 18, 100, 0, 'On wp reached - give questcredit');

-- condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 52245;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(17,0,52245,0,0,30,0,190716,7,0,0,0,0,'','Spell can be casted if near gameobject'),
(17,0,52245,0,1,30,0,190939,7,0,0,0,0,'','Spell can be casted if near gameobject');