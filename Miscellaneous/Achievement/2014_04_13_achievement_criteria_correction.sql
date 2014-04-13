-- Achievements
DELETE FROM `achievement_criteria_dbc` WHERE `achievement` IN (2116, 2079, 1636);
INSERT INTO `achievement_criteria_dbc` (`ID`, `achievement`, `type`, `value1`, `value2`, `additionalReqType1`, `additionalReqValue1`, `additionalReqType2`, `additionalReqValue2`, `completionFlag`, `timedCriteriaStartType`, `timeCriteriaMiscId`, `timeLimit`, `showOrder`, `additionalConditionType1`, `additionalConditionType2`, `additionalConditionType3`, `additionalConditionValue1`, `additionalConditionValue2`, `additionalConditionValue3`) VALUES
(7493,2116,57,22999,1,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0),
(7382,2079,57,28788,1,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0),
(5812,1636,57,36941,1,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0);