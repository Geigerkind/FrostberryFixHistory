-- Table `creature` have creature (GUID: 5886461 Entry: 52661) with `MovementType`=0 (idle) have `spawndist`<>0, set to 0.

UPDATE `creature` SET `spawndist` = 0 WHERE `MovementType` = 0 AND `spawndist` != 0;