-- quest sweet, horrible freedom (ID: 28055)

-- SAI
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 5843 AND `event_param1` = 12271);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`)
VALUES (5843,0,1,62,100,1,12271,0,2,14,1,'On Gossip select set Faction to hostile');

-- condition
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 12271);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(15,12271,0,0,0,9,0,28055,0,0,0,0,0,'','quest needed for gossip to be shown');