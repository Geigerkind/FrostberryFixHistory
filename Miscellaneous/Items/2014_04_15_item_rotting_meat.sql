-- Throw meat

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 71775;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,71775,0,0,31,0,3,9166,0,0,0,0,'','spell implecit target dinosaur'),
(13,0,71775,0,1,31,0,3,9163,0,0,0,0,'','spell implecit target dinosaur');