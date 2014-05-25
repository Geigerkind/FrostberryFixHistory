-- Kill it with Fire (Achievement) ID: 5290
-- Burning Soul: 91277
-- Standing in Flames Aura: 91196

DELETE FROM `achievement_criteria_dbc` WHERE `id` = 15991;
insert into `achievement_criteria_dbc` (`ID`, `achievement`, `type`, `value1`, `value2`, `additionalReqType1`, `additionalReqValue1`, `additionalReqType2`, `additionalReqValue2`, `completionFlag`, `timedCriteriaStartType`, `timeCriteriaMiscId`, `timeLimit`, `showOrder`, `additionalConditionType1`, `additionalConditionType2`, `additionalConditionType3`, `additionalConditionValue1`, `additionalConditionValue2`, `additionalConditionValue3`) values
('15991','5290','0','43934','3','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0');

