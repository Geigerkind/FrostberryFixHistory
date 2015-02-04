UPDATE `creature_template` SET `unit_flags` = 518, `AIName` = 'SmartAI' WHERE `entry` = 53883;
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `comment`) values
(53883,'0','0','0','1','100','1','1','1','1','1','11','100403','0','0','0','0','0','23','Channel Blessing of the Moonwell on OOC');
