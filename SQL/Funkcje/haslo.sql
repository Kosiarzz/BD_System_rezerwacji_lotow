--------------------------------------------------------
--  File created - poniedziałek-maja-18-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function HASLO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##PATRYK"."HASLO" 
(haslo in VARCHAR2,
phaslo in VARCHAR2)
RETURN VARCHAR2
IS

BEGIN
IF (haslo=phaslo) then
  RETURN 'TRUE';
ELSE
  RETURN 'FALSE';
  END IF;
END HASLO;

/
