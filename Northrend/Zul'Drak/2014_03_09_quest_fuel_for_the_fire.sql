-- quest Fuel for the Fire (ID: 12690)
-- updading creatures
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 28844 WHERE `id` = 12690;
UPDATE `creature_template` SET `faction_h` = 2069, `faction_a` = 2069, `unit_flags` = 0 WHERE `entry` = 28873;