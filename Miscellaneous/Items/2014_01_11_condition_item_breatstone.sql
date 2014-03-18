-- Fix Breathstone ID: 56169

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 77671 AND `ConditionTypeOrReference` = 31 AND `ConditionValue2` = 41955);
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`, `Comment`)
VALUES ('17','0','77671','0','0','31','1','3','41955','0','0','0','0','','Just imprisoned Soldiers can be targeted by this spell');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 77671 AND `ConditionTypeOrReference` = 31 AND `ConditionValue2` = 41548);
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`, `Comment`)
VALUES ('17','0','77671','1','0','31','1','3','41548','0','0','0','0','','Just imprisoned Soldiers can be targeted by this spell');
