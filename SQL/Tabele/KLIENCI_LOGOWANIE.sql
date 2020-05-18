--------------------------------------------------------
--  File created - poniedziałek-maja-18-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table KLIENCI_LOGOWANIE
--------------------------------------------------------

  CREATE TABLE "C##PATRYK"."KLIENCI_LOGOWANIE" 
   (	"ID_LKLIENT" NUMBER(*,0), 
	"LOGIN" VARCHAR2(20 BYTE), 
	"HASLO" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##PATRYK.KLIENCI_LOGOWANIE
SET DEFINE OFF;
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('1','klient1','klient1');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('0','test','test');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('2','test4','test4');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('108','brak','xxx');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('123','patryk2','patryk');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('21','test2','test2');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('113','NOWE','123');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('4','testx','123');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('3','patryk','patryk');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('41','klient2','klient2');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('61','dasdsa','asd');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('81','mateusz','mateusz');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('82','tsdadas','asd');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('115','OK','123');
Insert into C##PATRYK.KLIENCI_LOGOWANIE (ID_LKLIENT,LOGIN,HASLO) values ('117','ooooooo','123');
--------------------------------------------------------
--  DDL for Index KLIENCI_LOGOWANIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##PATRYK"."KLIENCI_LOGOWANIE_PK" ON "C##PATRYK"."KLIENCI_LOGOWANIE" ("ID_LKLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KLIENCI_LOGOWANIE_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##PATRYK"."KLIENCI_LOGOWANIE_INDEX1" ON "C##PATRYK"."KLIENCI_LOGOWANIE" ("LOGIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger KLIENCI_LOGOWANIE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##PATRYK"."KLIENCI_LOGOWANIE_TRG" 
BEFORE INSERT ON KLIENCI_LOGOWANIE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "C##PATRYK"."KLIENCI_LOGOWANIE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KLIENCI_LOGOWANIE_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##PATRYK"."KLIENCI_LOGOWANIE_TRG1" 
BEFORE INSERT ON KLIENCI_LOGOWANIE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID_LKLIENT IS NULL THEN
      SELECT KLIENCI_LOGOWANIE_SEQ1.NEXTVAL INTO :NEW.ID_LKLIENT FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "C##PATRYK"."KLIENCI_LOGOWANIE_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KLIENCI_LOGOWANIE_TRG2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##PATRYK"."KLIENCI_LOGOWANIE_TRG2" 
BEFORE INSERT ON KLIENCI_LOGOWANIE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.LOGIN IS NULL THEN
      SELECT KLIENCI_LOGOWANIE_SEQ2.NEXTVAL INTO :NEW.LOGIN FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "C##PATRYK"."KLIENCI_LOGOWANIE_TRG2" ENABLE;
--------------------------------------------------------
--  Constraints for Table KLIENCI_LOGOWANIE
--------------------------------------------------------

  ALTER TABLE "C##PATRYK"."KLIENCI_LOGOWANIE" MODIFY ("ID_LKLIENT" NOT NULL ENABLE);
  ALTER TABLE "C##PATRYK"."KLIENCI_LOGOWANIE" ADD CONSTRAINT "KLIENCI_LOGOWANIE_PK" PRIMARY KEY ("ID_LKLIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##PATRYK"."KLIENCI_LOGOWANIE" MODIFY ("LOGIN" NOT NULL ENABLE);
