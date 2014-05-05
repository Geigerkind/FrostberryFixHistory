-- Achievement E'Ko Madness (ID: 5443)
-- http://www.wowhead.com/achievement=5443/eko-madness
-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (14372, 7430, 48905, 7457);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7438, 7440, 10916, 7444, 7443, 7431, 7450, 7451, 7429) AND `id` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7458, 7459, 7460, 7452, 7453, 7454, 50258, 49235, 7448) AND `id` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7441, 7433) AND `id` = 3;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7432, 7434, 7428, 10737) AND `id` = 4;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7439) AND `id` = 15;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7442) AND `id` = 18;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_param2`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- Juju Frenzy 
(7438, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91082, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju frenzy on player'),
(7439, 0, 15, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91082, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju frenzy on player'),
(7440, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91082, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju frenzy on player'),
(7441, 0, 3, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91082, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju frenzy on player'),
(7442, 0, 18, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91082, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju frenzy on player'),
(10916, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91082, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju frenzy on player'),
(14372, 0, 0, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91082, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju frenzy on player'),
-- Juju Mending
(7443, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91992, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju mending on player'),
(7444, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91992, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju mending on player'),
-- Juju Fury
(7430, 0, 0, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93157, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju fury on player'),
(7431, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93157, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju fury on player'),
(7432, 0, 4, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93157, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju fury on player'),
(7433, 0, 3, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93157, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju fury on player'),
(7434, 0, 4, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93157, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju fury on player'),
(10737, 0, 4, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93157, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju fury on player'),
-- Juju chill
(7457, 0, 0, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93165, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju chill on player'),
(48905, 0, 0, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93165, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju chill on player'),
(7458, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93165, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju chill on player'),
(7459, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93165, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju chill on player'),
(7460, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93165, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju chill on player'),
(49235, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93165, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju chill on player'),
-- Juju Instinct
(7450, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91991, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju instinct on player'),
(7451, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91991, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju instinct on player'),
(7452, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91991, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju instinct on player'),
(7453, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91991, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju instinct on player'),
(7454, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 91991, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju instinct on player'),
-- Juju Brawn
(7428, 0, 4, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93150, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju brawn on player'),
(7429, 0, 1, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93150, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju brawn on player'),
(50258, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93150, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju brawn on player'),
-- Juju Freeze
(7448, 0, 2, 0, 6, 15, 1, 0, 0, 0, 0, 11, 93164, 3, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 'On death cast juju freeze on player');