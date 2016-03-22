--------------------------------------------------------
--  File created - Tuesday-March-22-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COMPANIE
--------------------------------------------------------

  CREATE TABLE "HR"."COMPANIE" 
   (	"IDCOMPANIE" NUMBER(7,0), 
	"DENUMIRE" VARCHAR2(25 BYTE), 
	"ADRESA" VARCHAR2(100 BYTE), 
	"DOMENIU" VARCHAR2(50 BYTE), 
	"PERSOANACONTACT" VARCHAR2(50 BYTE), 
	"IDPACHET" NUMBER(7,0), 
	"IDMEMBRU" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEPARTAMENT
--------------------------------------------------------

  CREATE TABLE "HR"."DEPARTAMENT" 
   (	"IDDEPARTAMENT" NUMBER(7,0), 
	"DENUMIRE" VARCHAR2(25 BYTE), 
	"DIRECTOR" VARCHAR2(25 BYTE), 
	"NUMARMEMBRI" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBRU_ECHIPA
--------------------------------------------------------

  CREATE TABLE "HR"."MEMBRU_ECHIPA" 
   (	"IDMEMBRU" NUMBER(7,0), 
	"NUME" VARCHAR2(25 BYTE), 
	"TELEFON" NUMBER(10,0), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"FACEBOOK" VARCHAR2(25 BYTE), 
	"FACULTATE" VARCHAR2(50 BYTE), 
	"GRUPA" NUMBER(5,0), 
	"IDDEPARTAMENT" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PACHET
--------------------------------------------------------

  CREATE TABLE "HR"."PACHET" 
   (	"IDPACHET" NUMBER(7,0), 
	"DENUMIRE" VARCHAR2(25 BYTE), 
	"WORKSHOP" NUMBER(1,0), 
	"MATERIALEGRAFICE" VARCHAR2(100 BYTE), 
	"PRET" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PARTICIPANT
--------------------------------------------------------

  CREATE TABLE "HR"."PARTICIPANT" 
   (	"IDPART" NUMBER(7,0), 
	"NUME" VARCHAR2(25 BYTE), 
	"PRENUME" VARCHAR2(25 BYTE), 
	"DATAN" DATE, 
	"EMAIL" VARCHAR2(50 BYTE), 
	"TELEFON" NUMBER(10,0), 
	"FACULTATE" VARCHAR2(50 BYTE), 
	"CALECV" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PARTICIPANT_WORKSHOP
--------------------------------------------------------

  CREATE TABLE "HR"."PARTICIPANT_WORKSHOP" 
   (	"IDPW" NUMBER(7,0), 
	"IDPART" NUMBER(7,0), 
	"IDWORKSHOP" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WORKSHOP
--------------------------------------------------------

  CREATE TABLE "HR"."WORKSHOP" 
   (	"IDWORKSHOP" NUMBER(7,0), 
	"DENUMIRE" VARCHAR2(25 BYTE), 
	"DATA" DATE, 
	"LOCATIE" VARCHAR2(35 BYTE), 
	"IDCOMPANIE" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  
REM INSERTING into HR.COMPANIE
SET DEFINE OFF;
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (1,'IBM','Bucuresti, Sector 1, STR. Bucuresti-Ploiesti Nr. 1A ','IT','Dan Ionescu',3,5);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (2,'Misys','Bucuresti, Sector 6, SPL. INDEPENDENTEI 319 ','IT ','David Popescu',3,2);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (3,'Qualitance','Bucuresti, STR. MESTERUL MANOLE nr. 1 ','Software','Ionut Iftimie',1,1);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (4,'Accenture','Bucuresti, Bulevard Iuliu Maniu NR 67A','IT ','Fabian Stoica',4,3);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (5,'Metro Systems','Bucuresti, Pipera Tunari NR 4C  ','Product Development','Dan Carp',2,4);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (6,'Pharmec','Bucuresti, Sector 1,  Aleea Modrogan nr. 20  ','IT','Camelia Davidici',3,10);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (7,'Dell','Bucuresti, Sector 2, BDUL. DIMITRIE POMPEIU Nr. 1 ','Software','Robert Iancu',4,5);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (8,'PC Garage','Bucuresti, Sector 3, Str. Logofat Tautu, Nr. 68A ','Hardware','Dan Ionescu',3,5);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (9,'Vauban','Bucuresti, Sector 1,Str. Otetelesanu , NR. 2 ','IT','Dan Ionescu',5,12);
Insert into HR.COMPANIE (IDCOMPANIE,DENUMIRE,ADRESA,DOMENIU,PERSOANACONTACT,IDPACHET,IDMEMBRU) values (10,'Microsoft','Bucuresti, Sector 1, Pia�a Presei Libere nr. 3-5 ','-','Dan Ionescu',4,12);

REM INSERTING into HR.DEPARTAMENT
SET DEFINE OFF;
Insert into HR.DEPARTAMENT (IDDEPARTAMENT,DENUMIRE,DIRECTOR,NUMARMEMBRI) values (1,'Edu','Simona Ene',30);
Insert into HR.DEPARTAMENT (IDDEPARTAMENT,DENUMIRE,DIRECTOR,NUMARMEMBRI) values (2,'FR','Eduard Socea',55);
Insert into HR.DEPARTAMENT (IDDEPARTAMENT,DENUMIRE,DIRECTOR,NUMARMEMBRI) values (3,'HR','Denisa Ile',50);
Insert into HR.DEPARTAMENT (IDDEPARTAMENT,DENUMIRE,DIRECTOR,NUMARMEMBRI) values (4,'IT','Mircea Scarlatescu',55);
Insert into HR.DEPARTAMENT (IDDEPARTAMENT,DENUMIRE,DIRECTOR,NUMARMEMBRI) values (5,'PR','Denisa Dutca',50);
REM INSERTING into HR.MEMBRU_ECHIPA
SET DEFINE OFF;
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (1,'Vlad Airinei',730260500,'airinei17@gmail.com','vlad.airinei','CSIE',1032,4);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (2,'Andreea Ionescu',731232441,'andreea.ionescu@gmail.com','andreea.ionescu','CSIE',1067,4);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (3,'Amalia Guseatu',730330676,'amalia.guseatu@gmail.com','amalia.guseatu','CSIE',1067,1);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (4,'Andreea Tomescu',730121522,'andreea.tomescu@gmail.com','andreea.tomescu','CSIE',1064,1);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (5,'Denisa Licu',735560513,'denisa.licu@gmail.com','denisa.licu','CSIE',1037,2);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (6,'Codrin Gherasim',730111522,'codrin.gherasim@gmail.com','codrin.gherasim','CSIE',1039,2);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (7,'Radu Apostu',730161533,'radu.apostu@gmail.com','radu.apostu','CSIE',1032,3);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (8,'Madalina Burcusi',734268131,'madalin.burcusi@gmail.com','madalin.burcusi','CSIE',1035,3);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (9,'Roxana Florescu',733260412,'roxana.florescu@gmail.com','roxana.florescu','CSIE',1039,3);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (10,'Alexandra Deaconescu',730264252,'alexandra.deaconescu@gmail.com','alexandra.deaconescu','CSIE',1046,4);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (11,'Cosmin Nistor',733240777,'cosmin.nistor@gmail.com','cosmin.nistor','CSIE',1037,4);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (12,'Antonia Costea',730265512,'antonia.costea@gmail.com','antonia.costea','CSIE',1055,4);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (13,'Simona Scarlat',783270277,'simona.scarlat@gmail.com','simona.scarlat','CSIE',1068,5);
Insert into HR.MEMBRU_ECHIPA (IDMEMBRU,NUME,TELEFON,EMAIL,FACEBOOK,FACULTATE,GRUPA,IDDEPARTAMENT) values (14,'Sonia Pasare',730275599,'sonia.pasare@gmail.com','sonia.pasare','CSIE',1045,5);
REM INSERTING into HR.PACHET
SET DEFINE OFF;
Insert into HR.PACHET (IDPACHET,DENUMIRE,WORKSHOP,MATERIALEGRAFICE,PRET) values (1,'Exclusiv',4,'Afis, Flyer, Sticker, Wave, Pagina Site, Reclama Facebook',2250);
Insert into HR.PACHET (IDPACHET,DENUMIRE,WORKSHOP,MATERIALEGRAFICE,PRET) values (2,'Platinum',2,'Afis, Flyer, Pagina Site, Reclama Facebook',1530);
Insert into HR.PACHET (IDPACHET,DENUMIRE,WORKSHOP,MATERIALEGRAFICE,PRET) values (3,'Gold',1,'Afis, Flyer, Reclama Facebook',1080);
Insert into HR.PACHET (IDPACHET,DENUMIRE,WORKSHOP,MATERIALEGRAFICE,PRET) values (4,'Silver',1,'Afis, Flyer',630);
Insert into HR.PACHET (IDPACHET,DENUMIRE,WORKSHOP,MATERIALEGRAFICE,PRET) values (5,'Bronze',0,'Afis',315);
Insert into HR.PACHET (IDPACHET,DENUMIRE,WORKSHOP,MATERIALEGRAFICE,PRET) values (6,'Logistic',0,'Flyer',90);
REM INSERTING into HR.PARTICIPANT
SET DEFINE OFF;
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (1,'Popescu','Vlad',to_date('03-AUG-95','DD-MON-RR'),'popescu95@gmail.com',730260123,'CSIE','/localhost/SpringIT/CV/popescu95@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (2,'Lupu','Marius',to_date('28-MAY-96','DD-MON-RR'),'mariu5@gmail.com',755123500,'CSIE','/localhost/SpringIT/CV/mariu5@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (3,'Vrinceanu','Dan',to_date('03-AUG-95','DD-MON-RR'),'dan3@gmail.com',730260123,'CSIE','/localhost/SpringIT/CV/popescu95@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (5,'Ioan','Maria',to_date('02-MAR-95','DD-MON-RR'),'maria95@gmail.com',730267773,'CSIE','/localhost/SpringIT/CV/maria95@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (6,'Muscalu','Diana',to_date('28-MAY-96','DD-MON-RR'),'diana6@gmail.com',755433500,'CSIE','/localhost/SpringIT/CV/diana6@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (7,'Zamfirescu','Ana',to_date('03-AUG-95','DD-MON-RR'),'ana95@gmail.com',730257177,'CSIE','/localhost/SpringIT/CV/ana95@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (8,'Gherca','Denisa',to_date('28-MAY-96','DD-MON-RR'),'denisa96@gmail.com',755123588,'CSIE','/localhost/SpringIT/CV/denisa96@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (9,'Neculai','Alexandru',to_date('03-AUG-95','DD-MON-RR'),'alex95@gmail.com',730262223,'CSIE','/localhost/SpringIT/CV/alex95@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (10,'Grosu','Dan',to_date('28-MAY-96','DD-MON-RR'),'dan95@gmail.com',755111100,'CSIE','/localhost/SpringIT/CV/dan95@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (11,'Panaite','David',to_date('03-AUG-92','DD-MON-RR'),'Panaite92@gmail.com',730260123,'CSIE','/localhost/SpringIT/CV/Panaite92@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (13,'Haisan','Georgiana',to_date('17-JUN-93','DD-MON-RR'),'Haisan98@gmail.com',730110123,'CSIE','/localhost/SpringIT/CV/Haisan98@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (14,'Mircea','Iasmina',to_date('13-JUL-93','DD-MON-RR'),'Mircea775@gmail.com',730220141,'CSIE','/localhost/SpringIT/CV/Mircea775@gmail.com');
Insert into HR.PARTICIPANT (IDPART,NUME,PRENUME,DATAN,EMAIL,TELEFON,FACULTATE,CALECV) values (15,'Acatrinei','Alex',to_date('22-JAN-94','DD-MON-RR'),'Acatrinei12@gmail.com',730763144,'CSIE','/localhost/SpringIT/CV/Acatrinei12@gmail.com');
REM INSERTING into HR.PARTICIPANT_WORKSHOP
SET DEFINE OFF;
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (1,15,1);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (2,13,1);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (3,2,1);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (4,5,2);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (5,1,2);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (6,13,2);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (7,14,3);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (8,5,3);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (9,6,3);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (10,5,4);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (11,3,4);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (12,1,4);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (13,1,5);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (14,6,5);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (15,9,5);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (16,15,6);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (17,3,6);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (18,2,6);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (19,7,7);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (20,8,7);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (21,3,7);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (22,1,8);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (23,3,9);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (24,5,9);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (25,1,9);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (26,9,3);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (27,10,3);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (28,13,4);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (29,11,2);
Insert into HR.PARTICIPANT_WORKSHOP (IDPW,IDPART,IDWORKSHOP) values (30,1,1);
REM INSERTING into HR.WORKSHOP
SET DEFINE OFF;
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (1,'The interview',to_date('21-MAR-95','DD-MON-RR'),'ASE',1);
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (2,'Mobile aplication in 4h',to_date('22-MAR-95','DD-MON-RR'),'ASE',3);
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (3,'Java',to_date('23-MAR-95','DD-MON-RR'),'ASE',5);
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (4,'Life with programming',to_date('23-MAR-95','DD-MON-RR'),'ASE',4);
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (5,'Tips and tricks at work',to_date('24-MAR-95','DD-MON-RR'),'ASE',10);
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (6,'Financial software',to_date('24-MAR-95','DD-MON-RR'),'ASE',2);
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (7,'Internet of Things',to_date('25-MAR-95','DD-MON-RR'),'ASE',7);
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (8,'C/C++',to_date('25-MAR-95','DD-MON-RR'),'ASE',6);
Insert into HR.WORKSHOP (IDWORKSHOP,DENUMIRE,DATA,LOCATIE,IDCOMPANIE) values (9,'Career Path',to_date('26-MAR-95','DD-MON-RR'),'ASE',8);

--------------------------------------------------------
--  DDL for Index PK_MEMBRU
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_MEMBRU" ON "HR"."MEMBRU_ECHIPA" ("IDMEMBRU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PARTICIPANT
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_PARTICIPANT" ON "HR"."PARTICIPANT" ("IDPART") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PW
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_PW" ON "HR"."PARTICIPANT_WORKSHOP" ("IDPW") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DEPARTAMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_DEPARTAMENT" ON "HR"."DEPARTAMENT" ("IDDEPARTAMENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_COMPANIE
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_COMPANIE" ON "HR"."COMPANIE" ("IDCOMPANIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_WORKSHOP
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_WORKSHOP" ON "HR"."WORKSHOP" ("IDWORKSHOP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PACHET
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_PACHET" ON "HR"."PACHET" ("IDPACHET") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MEMBRU_ECHIPA
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBRU_ECHIPA" ADD CONSTRAINT "EMAIL_NN" CHECK (email IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."MEMBRU_ECHIPA" ADD CONSTRAINT "NUMEM_NN" CHECK (nume IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."MEMBRU_ECHIPA" ADD CONSTRAINT "PK_MEMBRU" PRIMARY KEY ("IDMEMBRU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."MEMBRU_ECHIPA" ADD CONSTRAINT "TELEFON_NN" CHECK (telefon IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."MEMBRU_ECHIPA" ADD CONSTRAINT "VERIFICA_E_MAIL" CHECK (email LIKE '%@%.%') ENABLE;
--------------------------------------------------------
--  Constraints for Table PARTICIPANT
--------------------------------------------------------

  ALTER TABLE "HR"."PARTICIPANT" ADD CONSTRAINT "CALECV_NN" CHECK (caleCv IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."PARTICIPANT" ADD CONSTRAINT "DATAN_NN" CHECK (dataN IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."PARTICIPANT" ADD CONSTRAINT "NUME_NN" CHECK (NUME IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."PARTICIPANT" ADD CONSTRAINT "PK_PARTICIPANT" PRIMARY KEY ("IDPART")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."PARTICIPANT" ADD CONSTRAINT "PRENUME_NN" CHECK (prenume IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."PARTICIPANT" ADD CONSTRAINT "VERIFICA_P_MAIL" CHECK (email LIKE '%@%.%') ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTAMENT
--------------------------------------------------------

  ALTER TABLE "HR"."DEPARTAMENT" ADD CONSTRAINT "DENUMIREW_NN" CHECK (denumire IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."DEPARTAMENT" ADD CONSTRAINT "NUMARMEMBRI_NN" CHECK (numarMembri IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."DEPARTAMENT" ADD CONSTRAINT "PK_DEPARTAMENT" PRIMARY KEY ("IDDEPARTAMENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PACHET
--------------------------------------------------------

  ALTER TABLE "HR"."PACHET" ADD CONSTRAINT "DENUMIREP_NN" CHECK (denumire IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."PACHET" ADD CONSTRAINT "PK_PACHET" PRIMARY KEY ("IDPACHET")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."PACHET" ADD CONSTRAINT "PRET_NN" CHECK (pret IS NOT NULL) ENABLE;
--------------------------------------------------------
--  Constraints for Table WORKSHOP
--------------------------------------------------------

  ALTER TABLE "HR"."WORKSHOP" ADD CONSTRAINT "DENUMIRE_NN" CHECK (denumire IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."WORKSHOP" ADD CONSTRAINT "IDCOMPANIE_NN" CHECK (idCompanie IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."WORKSHOP" ADD CONSTRAINT "PK_WORKSHOP" PRIMARY KEY ("IDWORKSHOP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PARTICIPANT_WORKSHOP
--------------------------------------------------------

  ALTER TABLE "HR"."PARTICIPANT_WORKSHOP" ADD CONSTRAINT "PK_PW" PRIMARY KEY ("IDPW")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPANIE
--------------------------------------------------------

  ALTER TABLE "HR"."COMPANIE" ADD CONSTRAINT "DENUMIREC_NN" CHECK (denumire IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."COMPANIE" ADD CONSTRAINT "PERSOANACONTACT_NN" CHECK (persoanaContact IS NOT NULL) ENABLE;
 
  ALTER TABLE "HR"."COMPANIE" ADD CONSTRAINT "PK_COMPANIE" PRIMARY KEY ("IDCOMPANIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPANIE
--------------------------------------------------------

  ALTER TABLE "HR"."COMPANIE" ADD CONSTRAINT "FK_COMPANIE_MEMBRU" FOREIGN KEY ("IDMEMBRU")
	  REFERENCES "HR"."MEMBRU_ECHIPA" ("IDMEMBRU") ENABLE;
 
  ALTER TABLE "HR"."COMPANIE" ADD CONSTRAINT "FK_COMPANIE_PACHET" FOREIGN KEY ("IDPACHET")
	  REFERENCES "HR"."PACHET" ("IDPACHET") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBRU_ECHIPA
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBRU_ECHIPA" ADD CONSTRAINT "FK_MEMBRU_DEPARTAMENT" FOREIGN KEY ("IDDEPARTAMENT")
	  REFERENCES "HR"."DEPARTAMENT" ("IDDEPARTAMENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PARTICIPANT_WORKSHOP
--------------------------------------------------------

  ALTER TABLE "HR"."PARTICIPANT_WORKSHOP" ADD CONSTRAINT "FK_PARTICIPANT_WORKSHOP" FOREIGN KEY ("IDWORKSHOP")
	  REFERENCES "HR"."WORKSHOP" ("IDWORKSHOP") ENABLE;
 
  ALTER TABLE "HR"."PARTICIPANT_WORKSHOP" ADD CONSTRAINT "FK_WORKSHOP_PARTICIPANT" FOREIGN KEY ("IDPART")
	  REFERENCES "HR"."PARTICIPANT" ("IDPART") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WORKSHOP
--------------------------------------------------------

  ALTER TABLE "HR"."WORKSHOP" ADD CONSTRAINT "FK_WORKSHOP_COMPANIE" FOREIGN KEY ("IDCOMPANIE")
	  REFERENCES "HR"."COMPANIE" ("IDCOMPANIE") ENABLE;
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
