 DROP TABLE JOB_HISTORY CASCADE CONSTRAINTS;
 CREATE TABLE JOB_HISTORY (
  EMPLOYEE_ID NUMBER(6),
  START_DATE    DATE, 
  END_DATE      DATE, 
  JOB_ID         VARCHAR2(10),
  DEPARTMENT_ID NUMBER(4),
  CONSTRAINT JHIST_EMP_ID_ST_DATE_PK PRIMARY KEY (EMPLOYEE_ID, START_DATE), 
  CONSTRAINT JHIST_DATE_INTERVAL CHECK (end_date > start_date));

  --ALTER TABLE JOB_HISTORY ADD CONSTRAINT JHIST_DEPT_FK FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS (DEPARTMENT_ID)
  --ALTER TABLE JOB_HISTORY ADD CONSTRAINT JHIST_EMP_FK FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES (EMPLOYEE_ID)
 -- ALTER TABLE JOB_HISTORY ADD CONSTRAINT JHIST_JOB_FK FOREIGN KEY (JOB_ID) REFERENCES JOBS (JOB_ID) 





   COMMENT ON COLUMN JOB_HISTORY.EMPLOYEE_ID IS 'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the employee table';

   COMMENT ON COLUMN JOB_HISTORY.START_DATE IS 'A not null column in the complex primary key employee_id+start_date.
Must be less than the end_date of the job_history table. (enforced by
constraint jhist_date_interval)';

   COMMENT ON COLUMN JOB_HISTORY.END_DATE IS 'Last day of the employee in this job role. A not null column. Must be
greater than the start_date of the job_history table.
(enforced by constraint jhist_date_interval)';

   COMMENT ON COLUMN JOB_HISTORY.JOB_ID IS 'Job role in which the employee worked in the past; foreign key to
job_id column in the jobs table. A not null column.';
   COMMENT ON COLUMN JOB_HISTORY.DEPARTMENT_ID IS 'Department id in which the employee worked in the past; foreign key to deparment_id column 
in the departments table';

   COMMENT ON TABLE JOB_HISTORY  IS 'Table that stores job history of the employees. If an employee
changes departments within the job or changes jobs within the department,
new rows get inserted into this table with old job information of the
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with jobs, employees, and departments tables.';

/
REM INSERTING into JOB_HISTORY

Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (102,to_date('13-01-01','DD-MM-RR'),to_date('24-07-
06','DD-MM-RR'),'IT_PROG',60);
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (101,to_date('21-09-97','DD-MM-RR'),to_date('27-10-
01','DD-MM-RR'),'AC_ACCOUNT',110);
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (101,to_date('28-10-01','DD-MM-RR'),to_date('15-03-
05','DD-MM-RR'),'AC_MGR',110);
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (201,to_date('17-02-04','DD-MM-RR'),to_date('19-12-
07','DD-MM-RR'),'MK_REP',20);
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (114,to_date('24-03-06','DD-MM-RR'),to_date('31-12-
07','DD-MM-RR'),'ST_CLERK',50);
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (122,to_date('01-01-07','DD-MM-RR'),to_date('31-12-
07','DD-MM-RR'),'ST_CLERK',50);
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (200,to_date('17-09-95','DD-MM-RR'),to_date('17-06-
01','DD-MM-RR'),'AD_ASST',90);
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (176,to_date('24-03-06','DD-MM-RR'),to_date('31-12-
06','DD-MM-RR'),'SA_REP',80);
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (176,to_date('01-01-07','DD-MM-RR'),to_date('31-12-
07','DD-MM-RR'),'SA_MAN',80);
INSERT INTO JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) VALUES (200,TO_DATE('01-07-02','DD-MM-RR'),TO_DATE('31-12-
06','DD-MM-RR'),'AC_ACCOUNT',90);

