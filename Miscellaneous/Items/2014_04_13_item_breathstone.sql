-- Breathstone (ID: 56169)

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 77671;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,77671,0,0,31,1,3,41548,0,0,0,0,'','Spell_implecit_target imprisoned soldier'),
(13,0,77671,0,1,31,1,3,41955,0,0,0,0,'','Spell_implecit_target imprisoned soldier');