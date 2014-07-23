-- Mage / Warlock / Druids / Priest / Schaman
--Horde
UPDATE `quest_template` SET `RequiredClasses` = 1488, `RequiredRaces` = 946, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` IN (29452, 29129);
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29285, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29308;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29308, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29309;

-- Alliance
UPDATE `quest_template` SET `RequiredClasses` = 1488, `RequiredRaces` = 2098253, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` IN (29453, 29132);
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29285, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29307;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29307, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29312;
UPDATE `quest_template` SET `SourceSpellId` = 94259 WHERE `id` = 29453;

-- General
UPDATE `quest_template` SET `Method` = 0 WHERE `id` IN (29452, 29453);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 53115 AND `id` IN (3,4);
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
(53115,0,3,0,6,0,100,0,0,0,0,0,7,29452,0,0,0,0,0,18,100,0,0,0,0,0,0,'add quest on die'),
(53115,0,4,0,6,0,100,0,0,0,0,0,7,29453,0,0,0,0,0,18,100,0,0,0,0,0,0,'add quest on die');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 53115;
insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) values
(22,4,53115,0,0,8,0,29452,0,0,1,0,0, '', ''),
(22,4,53115,0,0,9,0,29452,0,0,1,0,0, '', ''),
(22,4,53115,0,0,28,0,29452,0,0,1,0,0, '', ''),
(22,4,53115,0,0,15,0,1488,0,0,0,0,0, '', ''),
(22,4,53115,0,0,16,0,946,0,0,0,0,0, '', ''),
(22,5,53115,0,0,8,0,29453,0,0,1,0,0, '', ''),
(22,5,53115,0,0,9,0,29453,0,0,1,0,0, '', ''),
(22,5,53115,0,0,28,0,29453,0,0,1,0,0, '', ''),
(22,5,53115,0,0,15,0,1488,0,0,0,0,0, '', ''),
(22,5,53115,0,0,16,0,2098253,0,0,0,0,0, '', '');

UPDATE `quest_template` SET `RequiredClasses` = 1488, `Flags` = 72 WHERE `id` = 29134;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29134, `NextQuestID` = 29193, `NextQuestIdChain` = 29193, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29135;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29135, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29193;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29193, `SpecialFlags` = 0, `Flags` = 72 WHERE `id` = 29194;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29194, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29225;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29225, `SpecialFlags` = 0 WHERE `id` = 29234;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29234, `NextQuestIdChain` = 29240, `SpecialFlags` = 0, `Flags` = 72 WHERE `id` = 29239;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29239, `SpecialFlags` = 0, `Flags` = 72 WHERE `id` = 29240;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29240, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29269;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29269, `Flags` = 72 WHERE `id` = 29270;
UPDATE `quest_template` SET `RequiredClasses` = 1488, `PrevQuestId` = 29270, `Flags` = 72, `SpecialFlags` = 0 WHERE `id` = 29285;

UPDATE `creature_involvedrelation` SET `id` = 6700 WHERE `quest` IN (29129, 29132);
UPDATE `creature_questrelation` SET `id` = 6700 WHERE `quest` = 29134;
