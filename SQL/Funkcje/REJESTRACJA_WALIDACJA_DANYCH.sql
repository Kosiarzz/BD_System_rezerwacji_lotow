--------------------------------------------------------
--  File created - poniedziałek-maja-18-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function REJESTRACJA_WALIDACJA_DANYCH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##PATRYK"."REJESTRACJA_WALIDACJA_DANYCH" 
(imie in VARCHAR2,
nazwisko in VARCHAR2,
adres in VARCHAR2,
pesel in VARCHAR2,
telefon in VARCHAR2,
login in VARCHAR2,
haslo in VARCHAR2,
phaslo in VARCHAR2)
RETURN VARCHAR2
IS
ilosc_znakow exception;	
bpesel exception;		
btelefon exception;
hasla exception;
BEGIN
IF (length(imie)>0 and length(nazwisko)>0 and length(adres)>0 and length(pesel)>0 and length(telefon)>0 and length(login)>0 and length(haslo)>0 and length(phaslo)>0) then
        IF(haslo=phaslo) then
            IF(length(telefon)=9) then
                IF(length(pesel)=11) then
                    return 'TRUE';
                else
                    raise bpesel;
                END IF;
            else
                raise btelefon;
            END IF;
        else
            raise hasla;
        END IF;
    else
    raise ilosc_znakow;
END IF;
  
  exception
  when ilosc_znakow then RAISE_APPLICATION_ERROR(-20000, 'Uzupelnij wszytskie dane!');
  when hasla then RAISE_APPLICATION_ERROR(-20001, 'Hasla nie sa takie same!');
  when btelefon then RAISE_APPLICATION_ERROR(-20002, 'Podaj poprawny numer telefonu!');
  when bpesel then RAISE_APPLICATION_ERROR(-20003, 'Podaj poprawny pesel!');
  --when DUP_VAL_ON_INDEX then RAISE_APPLICATION_ERROR(-00001, 'Taki login istnieje !');
  when OTHERS then RAISE_APPLICATION_ERROR(-20004,'Blad!');
END REJESTRACJA_WALIDACJA_DANYCH; --koniec funkcji

/
