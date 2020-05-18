--------------------------------------------------------
--  File created - poniedziałek-maja-18-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REZERWACJE
--------------------------------------------------------

  CREATE TABLE "C##PATRYK"."REZERWACJE" 
   (	"ID_REZERWACJA" NUMBER(*,0), 
	"NUMER_LOTU" VARCHAR2(10 BYTE), 
	"NUMER_MIEJSCA" VARCHAR2(10 BYTE), 
	"ID_KLIENT" NVARCHAR2(11), 
	"NUMER_REZERWACJI" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##PATRYK.REZERWACJE
SET DEFINE OFF;
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('51','13','9(W)','12312312360','(A) 23');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('1','11','10','patryk','5');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('2','11','5','patryk','5');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('52','12','2','blad','24');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('53','15','3','blad','25');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('54','15','9','blad','26');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('55','15','12','blad','27');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('56','16','79','blad','28');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('83','15','11','11118888888','48');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('101','0',null,'12345678901','50');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('43','13','17','patryk','15');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('44','13','3','patryk','16');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('45','13','4','patryk','17');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('46','13','4','patryk','18');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('47','13','5','patryk','19');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('48','12','24(W)','patryk','(A) 20');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('62','13','6','12312312360','30');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('63','13','7','12312312360','31');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('64','13','8','12312312360','32');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('65','13','10','12312312360','33');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('66','13','13','12312312360','34');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('67','13','14','12312312360','35');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('68','13','15','12312312360','36');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('69','13','16','12312312360','37');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('70','13','18','12312312360','38');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('74','13','22','12312312360','42');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('75','13','23','12312312360','43');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('81','15','11','11118888888','46');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('84','15','10','11118888888','49');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('102','0','5','12345678901','51');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('82','15','11','11118888888','47');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('103','12','1(W)','12345678901','(A) 52');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('121','17','2(W)','11112222333','(A) 53');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('141','12','7(W)','11223344556','(A) 54');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('142','16','15','12312312360','55');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('143','17','2','55566674523','56');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('21','13','1(W)','patryk','(A) 6');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('22','12','1(W)','patryk','(A) 6');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('23','13','13(W)','patryk','(A) 7');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('24','13','12','patryk','10');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('25','12','17','patryk','11');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('26','13','11','patryk','12');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('41','13','2','patryk','13');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('42','12','18','patryk','14');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('49','14','1(W)','patryk','(A) 21');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('50','14','1','patryk','22');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('61','13','1','12312312360','29');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('71','13','19','12312312360','39');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('72','13','20(W)','12312312360','(A) 40');
Insert into C##PATRYK.REZERWACJE (ID_REZERWACJA,NUMER_LOTU,NUMER_MIEJSCA,ID_KLIENT,NUMER_REZERWACJI) values ('73','13','21','12312312360','41');
--------------------------------------------------------
--  DDL for Index REZERWACJE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##PATRYK"."REZERWACJE_PK" ON "C##PATRYK"."REZERWACJE" ("ID_REZERWACJA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger REZERWACJE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##PATRYK"."REZERWACJE_TRG" 
BEFORE INSERT ON REZERWACJE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID_REZERWACJA IS NULL THEN
      SELECT REZERWACJE_SEQ.NEXTVAL INTO :NEW.ID_REZERWACJA FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "C##PATRYK"."REZERWACJE_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table REZERWACJE
--------------------------------------------------------

  ALTER TABLE "C##PATRYK"."REZERWACJE" MODIFY ("ID_REZERWACJA" NOT NULL ENABLE);
  ALTER TABLE "C##PATRYK"."REZERWACJE" ADD CONSTRAINT "REZERWACJE_PK" PRIMARY KEY ("ID_REZERWACJA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
