-- wash out (ID: 14345)

DELETE FROM `creature_template_addon` WHERE `entry` = 36210;
DELETE FROM `creature_addon` WHERE `guid` = 90759;

-- cleanup
DELETE FROM `creature` WHERE `id` = 37151;