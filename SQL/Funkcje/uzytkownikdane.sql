--------------------------------------------------------
--  File created - poniedziałek-maja-18-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function UZYTKOWNIKDANE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##PATRYK"."UZYTKOWNIKDANE" 
(imie in VARCHAR2,
nazwisko in VARCHAR2,
adres in VARCHAR2,
pesel in VARCHAR2,
telefon in VARCHAR2)
RETURN VARCHAR2
IS
ilosc NUMBER;
BEGIN
IF (length(imie)>0 and length(nazwisko)>0 and length(adres)>0 and length(pesel)>0 and length(telefon)>0) then
  RETURN 'TRUE';
ELSE
  RETURN 'FALSE';
  END IF;
END UZYTKOWNIKDANE;

/
