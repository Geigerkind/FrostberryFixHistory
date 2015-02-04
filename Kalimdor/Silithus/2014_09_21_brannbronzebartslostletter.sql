UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `item` = 20461;

replace into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) values
('1','13136','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11734','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11733','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11732','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11731','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11730','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11729','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11728','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11727','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11726','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11725','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11724','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11723','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11722','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11721','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','11698','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded'),
('1','13301','20461','0','0','8','0','8304','0','0','0','0','0','','Item lootable if player has quest rewarded');
