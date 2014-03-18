-- Riding the red rocket 
-- Horde: 12432
-- Allianz: 12437
-- rocket: 27593
-- npcflag: 16777216 -- type_flags: 0 -- vehicleid: 57 -- movementid: 265
-- explosion: 110261


-- Updating quest -> player are now able to loot the fuel
UPDATE `quest_template` SET `RequiredSourceItemId1` = 37664, `RequiredSourceItemCount1` = 1 WHERE `id` IN (12432, 12437);

-- Updating rocket
UPDATE `creature_template` SET `movementid` = 265, `VehicleId` = 335, `type_flags` = 393256, `dynamicflags` = 0, `npcflag` = 0, `unit_flags` = 131076, `AIName` = 'SmartAI', `name` = 'Rocket Propelled Warhead', `faction_h` = 35, `faction_a` = 35 WHERE `entry` = 27593;

-- Adding waypoints
DELETE FROM `waypoints` WHERE `entry` IN (27593, 27594) AND `pointid` IN (1,2,3,4,5);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(27593, 1, 2246, -1841, 0.0014, 'Horde: Riding the red Rocket 1'),
(27593, 2, 2294, -2054, 0.0014, 'Horde: Riding the red Rocket 2'),
(27593, 3, 2400, -2195, 0.0014, 'Horde: Riding the red Rocket 3'),
(27593, 4, 2468, -2256, 0.0014, 'Horde: Riding the red Rocket 4'),
(27593, 5, 2539, -2250, 0.0014, 'Horde: Riding the red Rocket 5'),
(27594, 1, 2306, -1772, 0.0014, 'Allianz: Riding the red Rocket 1'),
(27594, 2, 2400, -1620, 0.0014, 'Allianz: Riding the red Rocket 2'),
(27594, 3, 2524, -1566, 0.0014, 'Allianz: Riding the red Rocket 3'),
(27594, 4, 2657, -1537, 0.0014, 'Allianz: Riding the red Rocket 4'),
(27594, 5, 2765, -1593, 0.0014, 'Allianz: Riding the red Rocket 5');

-- Adding way to ship
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-350390, -350391, -350392, -350393) AND `id` IN (0,1,2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`,`target_param1`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-350390, 0, 0, 27, 100, 1, 100000, 100000, 0, 0, 53, 1, 27593, 0, 12432, 40000, 0, 1, 0, 0, 0, 0, 0, 'On passenger board - start wp'),
(-350390, 0, 1, 40, 100, 1, 5, 0, 0, 0, 11, 110261, 7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'On waypoint reached - cast visual explosion - self'),
(-350390, 0, 2, 40, 100, 1, 5, 0, 0, 0, 33, 27688, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 'On waypoint reached - give kill credit - player near'),
(-350390, 0, 3, 40, 100, 1, 5, 0, 0, 0, 33, 27702, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 'On waypoint reached - give kill credit - player near'),
(-350390, 0, 4, 40, 100, 1, 5, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'On waypoint reached - kill - self'),
(-350391, 0, 0, 27, 100, 1, 100000, 100000, 0, 0, 53, 1, 27593, 0, 12432, 40000, 0, 1, 0, 0, 0, 0, 0, 'On passenger board - start wp'),
(-350391, 0, 1, 40, 100, 1, 5, 0, 0, 0, 11, 110261, 7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'On waypoint reached - cast visual explosion - self'),
(-350391, 0, 2, 40, 100, 1, 5, 0, 0, 0, 33, 27688, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 'On waypoint reached - give kill credit - player near'),
(-350391, 0, 3, 40, 100, 1, 5, 0, 0, 0, 33, 27702, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 'On waypoint reached - give kill credit - player near'),
(-350391, 0, 4, 40, 100, 1, 5, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'On waypoint reached - kill - self'),
(-350392, 0, 0, 27, 100, 1, 100000, 100000, 0, 0, 53, 1, 27594, 0, 12432, 40000, 0, 1, 0, 0, 0, 0, 0, 'On passenger board - start wp'),
(-350392, 0, 1, 40, 100, 1, 5, 0, 0, 0, 11, 110261, 7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'On waypoint reached - cast visual explosion - self'),
(-350392, 0, 2, 40, 100, 1, 5, 0, 0, 0, 33, 27702, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 'On waypoint reached - give kill credit - player near'),
(-350392, 0, 3, 40, 100, 1, 5, 0, 0, 0, 33, 27688, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 'On waypoint reached - give kill credit - player near'),
(-350392, 0, 4, 40, 100, 1, 5, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'On waypoint reached - kill - self'),
(-350393, 0, 0, 27, 100, 1, 100000, 100000, 0, 0, 53, 1, 27594, 0, 12432, 40000, 0, 1, 0, 0, 0, 0, 0, 'On passenger board - start wp'),
(-350393, 0, 1, 40, 100, 1, 5, 0, 0, 0, 11, 110261, 7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'On waypoint reached - cast visual explosion - self'),
(-350393, 0, 2, 40, 100, 1, 5, 0, 0, 0, 33, 27702, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 'On waypoint reached - give kill credit - player near'),
(-350393, 0, 3, 40, 100, 1, 5, 0, 0, 0, 33, 27688, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 'On waypoint reached - give kill credit - player near'),
(-350393, 0, 4, 40, 100, 1, 5, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'On waypoint reached - kill - self');