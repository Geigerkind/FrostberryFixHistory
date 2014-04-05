-- conditions

DELETE FROM `conditions` WHERE `SourceEntry` IN (20765, 12684, 10621, 39152, 36855, 36856, 3395, 43507, 42172, 33470, 67539) AND `SourceGroup` IN (35245, 35096, 39261, 7158, 7157, 7156, 5797, 30258, 29304, 26798, 27004, 27005, 7153, 7154, 7155, 7156, 7157, 7158, 9462, 30258, 29312, 29313, 29314, 29316, 30258, 30788, 31134, 31506, 31508, 31509, 31510, 31512, 45264, 45265, 45266, 45267) AND `SourceTypeOrReferenceId` = 1;
DELETE FROM `conditions` WHERE `SourceEntry` IN (52676) AND `SourceGroup` IN (193603) AND `SourceTypeOrReferenceId` = 4;
DELETE FROM `conditions` WHERE `SourceGroup` IN (6880, 639);
DELETE FROM `conditions` WHERE `SourceEntry` = 87517 AND `SourceGroup` IN (1,2);

DELETE FROM `conditions` WHERE `SourceEntry` IN (71775, 21050, 74175, 83993, 88354, 90103, 95224, 77231, 72925, 73387, 80989, 74674, 80995, 74756, 74738, 74415, 70458, 76873, 80782, 73108, 66284, 89809, 62644, 77819, 101838) AND `SourceGroup` = 1 AND `SourceTypeOrReferenceId` = 13;
DELETE FROM `conditions` WHERE `SourceEntry` IN (71349, 77231) AND `SourceGroup` = 2 AND `SourceTypeOrReferenceId` = 13;
DELETE FROM `conditions` WHERE `SourceEntry` IN (65455, 85555, 77231, 89819, 89822, 89828, 93240, 93239, 93238, 81566, 93243, 93242, 93241, 81196, 84737) AND `SourceGroup` = 3 AND `SourceTypeOrReferenceId` = 13;
DELETE FROM `conditions` WHERE `SourceEntry` IN (87653, 89124, 94970, 75657, 74359, 74142) AND `SourceGroup` = 7 AND `SourceTypeOrReferenceId` = 13;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = -25830;
DELETE FROM `conditions` WHERE `ConditionValue1` = 0 AND `ConditionTypeOrReference` = 32;

UPDATE `conditions` SET `ConditionValue1` = 56438, `ConditionValue2` = 1 WHERE `SourceEntry` = 56438;
UPDATE `conditions` SET `ConditionValue2` = 0 WHERE `SourceEntry` = 76784 AND `ConditionValue1` = 7;
UPDATE `conditions` SET `ConditionTarget` = 0 WHERE `SourceEntry` = 47339;
UPDATE `conditions` SET `ConditionValue1` = 3, `ConditionTarget` = 0 WHERE `SourceEntry` = 74359;
UPDATE `conditions` SET `SourceId` = 0 WHERE `SourceId` = 1 AND `SourceTypeOrReferenceId` = 17;