-- Fix Quest Alchemie Spezi:
-- Potion Master ID: 29067
-- Elixir Master ID: 29481
-- Transmutation Master ID: 29482

SET @PMQ = 29067;
SET @EMQ = 29481;
SET @TMQ = 29482;

UPDATE `quest_template` SET `RequiredSkillID` = 171, `RequiredSkillPoints` = 325, `MinLevel` = 68 WHERE `id` = @PMQ;
UPDATE `quest_template` SET `RequiredSkillID` = 171, `RequiredSkillPoints` = 325, `MinLevel` = 68 WHERE `id` = @EMQ;
UPDATE `quest_template` SET `RequiredSkillID` = 171, `RequiredSkillPoints` = 325, `MinLevel` = 68 WHERE `id` = @TMQ;

-- If questtaken
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 0 AND `SourceEntry` = @PMQ AND `ConditionValue1` = @TMQ AND `ConditionTypeOrReference` = 9);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@PMQ,0,0,9,0,@TMQ,0,0,1,0,0,'','if player is on quest, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 0 AND `SourceEntry` = @EMQ AND `ConditionValue1` = @TMQ AND `ConditionTypeOrReference` = 9);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@EMQ,0,0,9,0,@TMQ,0,0,1,0,0,'','if player is on quest, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 1 AND `SourceEntry` = @PMQ AND `ConditionValue1` = @EMQ AND `ConditionTypeOrReference` = 9);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@PMQ,1,0,9,0,@EMQ,0,0,1,0,0,'','if player is on quest, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 0 AND `SourceEntry` = @TMQ AND `ConditionValue1` = @EMQ AND `ConditionTypeOrReference` = 9);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@TMQ,0,0,9,0,@EMQ,0,0,1,0,0,'','if player is on quest, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 1 AND `SourceEntry` = @TMQ AND `ConditionValue1` = @PMQ AND `ConditionTypeOrReference` = 9);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@TMQ,1,0,9,0,@PMQ,0,0,1,0,0,'','if player is on quest, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 1 AND `SourceEntry` = @EMQ AND `ConditionValue1` = @PMQ AND `ConditionTypeOrReference` = 9);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@EMQ,1,0,9,0,@PMQ,0,0,1,0,0,'','if player is on quest, quest is not shown');

-- If quest rewarded
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 2 AND `SourceEntry` = @PMQ AND `ConditionValue1` = @TMQ AND `ConditionTypeOrReference` = 8);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@PMQ,2,0,8,0,@TMQ,0,0,1,0,0,'','if quest rewarded, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 2 AND `SourceEntry` = @EMQ AND `ConditionValue1` = @TMQ AND `ConditionTypeOrReference` = 8);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@EMQ,2,0,8,0,@TMQ,0,0,1,0,0,'','if quest rewarded, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 3 AND `SourceEntry` = @PMQ AND `ConditionValue1` = @EMQ AND `ConditionTypeOrReference` = 8);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@PMQ,3,0,8,0,@EMQ,0,0,1,0,0,'','if quest rewarded, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 2 AND `SourceEntry` = @TMQ AND `ConditionValue1` = @EMQ AND `ConditionTypeOrReference` = 8);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@TMQ,2,0,8,0,@EMQ,0,0,1,0,0,'','if quest rewarded, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 3 AND `SourceEntry` = @TMQ AND `ConditionValue1` = @PMQ AND `ConditionTypeOrReference` = 8);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@TMQ,3,0,8,0,@PMQ,0,0,1,0,0,'','if quest rewarded, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 3 AND `SourceEntry` = @EMQ AND `ConditionValue1` = @PMQ AND `ConditionTypeOrReference` = 8);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@EMQ,3,0,8,0,@PMQ,0,0,1,0,0,'','if quest rewarded, quest is not shown');

-- If Quest complete
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 4 AND `SourceEntry` = @PMQ AND `ConditionValue1` = @TMQ AND `ConditionTypeOrReference` = 28);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@PMQ,4,0,28,0,@TMQ,0,0,1,0,0,'','if quest complete, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 4 AND `SourceEntry` = @EMQ AND `ConditionValue1` = @TMQ AND `ConditionTypeOrReference` = 28);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@EMQ,4,0,28,0,@TMQ,0,0,1,0,0,'','if quest complete, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 5 AND `SourceEntry` = @PMQ AND `ConditionValue1` = @EMQ AND `ConditionTypeOrReference` = 28);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@PMQ,5,0,28,0,@EMQ,0,0,1,0,0,'','if quest complete, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 4 AND `SourceEntry` = @TMQ AND `ConditionValue1` = @EMQ AND `ConditionTypeOrReference` = 28);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@TMQ,4,0,28,0,@EMQ,0,0,1,0,0,'','if quest complete, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 5 AND `SourceEntry` = @TMQ AND `ConditionValue1` = @PMQ AND `ConditionTypeOrReference` = 28);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@TMQ,5,0,28,0,@PMQ,0,0,1,0,0,'','if quest complete, quest is not shown');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 19 AND `SourceId` = 5 AND `SourceEntry` = @EMQ AND `ConditionValue1` = @PMQ AND `ConditionTypeOrReference` = 28);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(19,0,@EMQ,5,0,28,0,@PMQ,0,0,1,0,0,'','if quest complete, quest is not shown');