 DROP TABLE REGIONS  CASCADE CONSTRAINTS;
  CREATE TABLE REGIONS
  (REGION_ID NUMBER(2) CONSTRAINT REG_ID_PK PRIMARY KEY ,
    REGION_NAME VARCHAR2(25) NOT NULL );

-- INSERTING into REGIONS


Insert into REGIONS (REGION_ID,REGION_NAME) values (1,'Europe');
Insert into REGIONS (REGION_ID,REGION_NAME) values (2,'Americas');
INSERT INTO REGIONS (REGION_ID,REGION_NAME) VALUES (3,'Asia');
INSERT INTO REGIONS (REGION_ID,REGION_NAME) VALUES (4,'Middle East and Africa');

