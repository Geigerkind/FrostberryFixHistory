-- Parts-is-Parts (ID: 24619)
-- Npc within Battlescar area: 37978, 37922, 37923
-- spell to summon Mutilated Remains: 70828

DELETE FROM `smart_scripts` WHERE `entryorguid` = 37978;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (37922, 37923) AND `id` IN (2,3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(37978, 0, 0, 8, 100, 1, 70813, 1, 1, 1, 11, 70828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast self summon Remains'),
(37978, 0, 1, 8, 100, 1, 70813, 1, 1, 1, 11, 70828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast self summon Remains'),
(37922, 0, 2, 8, 100, 1, 70813, 1, 1, 1, 11, 70828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast self summon Remains'),
(37922, 0, 3, 8, 100, 1, 70813, 1, 1, 1, 11, 70828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast self summon Remains'),
(37923, 0, 2, 8, 100, 1, 70813, 1, 1, 1, 11, 70828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast self summon Remains'),
(37923, 0, 3, 8, 100, 1, 70813, 1, 1, 1, 11, 70828, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'On spellhit cast self summon Remains');

-- conditions for the spell: Dismembering
DELETE FROM `conditions` WHERE `SourceEntry` = 70813;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,1,70813,0,0,31,0,3,37978,0,0,0,0,'','spell implecit target 37978'),
(13,1,70813,0,1,31,0,3,37922,0,0,0,0,'','spell implecit target 37922'),
(13,1,70813,0,2,31,0,3,37923,0,0,0,0,'','spell implecit target 37923'),
(17,0,70813,0,0,36,1,0,0,0,1,0,0,'','target is death');

-- Spawn correction
DELETE FROM `gameobject` WHERE `id` = 201904;
DELETE FROM `gameobject` WHERE `guid` IN (43320, 43308, 43307, 43323, 43317, 43314, 43313);

