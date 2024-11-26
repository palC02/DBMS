CREATE TABLE EMP11 ( EID VARCHAR2(5) PRIMARY KEY, ENAME VARCHAR2(25), EDEPT VARCHAR2(25),ESAL NUMBER);



INSERT INTO EMP11 VALUES ('E100','VIRAT KOHLI','IT',56000);


INSERT ALL 
    INTO EMP11 ( EID, ENAME, EDEPT,ESAL ) VALUES ( 'E200', 'RAVINDRA JADEJA', 'IT',51000)
    INTO EMP11 ( EID, ENAME, EDEPT,ESAL ) VALUES ( 'E201', 'KAJOL KIRAN', 'HR',41000)
    INTO EMP11 ( EID, ENAME, EDEPT,ESAL ) VALUES ( 'E202', 'TUHIN RAY', 'SPORTS',31000 )
    INTO EMP11 ( EID, ENAME, EDEPT,ESAL ) VALUES ( 'E203', 'TITHI CHATTREJEE', 'SPORTS',51000 )
    INTO EMP11 ( EID, ENAME, EDEPT,ESAL ) VALUES ( 'E204', 'SHIRSHA SAHA', 'HR',75000 )
 INTO EMP11 ( EID, ENAME, EDEPT,ESAL ) VALUES ( 'E205', 'NANDINI RAY', 'IT',58000 )
 INTO EMP11 ( EID, ENAME, EDEPT,ESAL ) VALUES ( 'E206', 'MEGHA SEN', 'HR',65000 )
SELECT 1 FROM dual;

** DATE FUNCTIONS:

1. ADD_MONTHS

SELECT SYSDATE, ADD_MONTHS(SYSDATE,3) AFTER_3_MONTHS, ADD_MONTHS(SYSDATE,-3) BEFORE_3_MONTHS FROM DUAL;

2. CURRENT_DATE

SELECT SYSDATE, CURRENT_DATE,SESSIONTIMEZONE FROM DUAL;

3. CURRENT_TIMESTAMP

SELECT CURRENT_TIMESTAMP FROM DUAL;

4.EXTRACT

 SELECT SYSDATE, EXTRACT ( YEAR FROM SYSDATE) YEAR , EXTRACT(MONTH FROM SYSDATE) MONTH , EXTRACT (DAY FROM SYSDATE) DAY FROM DUAL;

5. LAST_DAY

SELECT SYSDATE, LAST_DAY(SYSDATE) MONTH_END, LAST_DAY(SYSDATE)+1 "NEXT MONTH" FROM DUAL;

6. MONTHS_BETWEEN

SELECT MONTHS_BETWEEN ('15-AUG-1947','21-DEC-1987') TEST1, MONTHS_BETWEEN ('21-DEC-1987','12-MAR-1975') TEST2 FROM DUAL;


SELECT MONTHS_BETWEEN (SYSDATE,'12-MAR-1975') TEST1 FROM DUAL;



SELECT MONTHS_BETWEEN (SYSDATE,'12-MAR-1983')*30 DAYS_ALIVE, 
MONTHS_BETWEEN (SYSDATE,'12-MAR-1983')/12 YEARS_ALIVE, MONTHS_BETWEEN (SYSDATE,'12-MAR-1983') MONTHS_ALIVE FROM DUAL;


ALTER TABLE EMP11 ADD DOJ DATE;


UPDATE EMP11 SET DOJ='22-JULY-2018' WHERE EID='E100';

UPDATE EMP11 SET DOJ='01-JULY-2010' WHERE EID='E201';


MULTIPLE UPDATES:


UPDATE emp11
SET DOJ = CASE 
		WHEN EID = 'E100' THEN '31-JULY-2017'
		WHEN EID = 'E200' THEN '01-JULY-2000'
                      	WHEN EID = 'E201' THEN '01-JAN-2005'
		WHEN EID = 'E202' THEN '01-JAN-2010'
		WHEN EID = 'E203' THEN '01-JULY-2015'
		WHEN EID = 'E204' THEN '01-JAN-2020'
		WHEN EID = 'E205' THEN '31-DEC-2002'
		WHEN EID = 'E206' THEN '31-JULY-2009'
                     END;



SELECT EID,ENAME,ESAL,EDEPT,DOJ FROM EMP11 WHERE DOJ < TRUNC(SYSDATE) - 5;



 SELECT * FROM EMP11  ORDER BY DOJ DESC;


SELECT EID,ENAME,ESAL,EDEPT,DOJ FROM EMP11 WHERE (DOJ - SYSDATE > 5);

SELECT EID,ENAME,ESAL,EDEPT,DOJ FROM EMP11 WHERE (SYSDATE - DOJ> 5);

** EXP MORE THAN 1000 DAYS:

SELECT EID,ENAME,ESAL,EDEPT FROM EMP11 WHERE (SYSDATE - DOJ > 1000);

** EXP > 10 YEARS:

SELECT EID,ENAME,ESAL,EDEPT,DOJ FROM EMP11 WHERE (SYSDATE - DOJ > 3650);

** EXP > 20 YEARS:
SELECT EID,ENAME,ESAL,EDEPT,DOJ FROM EMP11 WHERE (SYSDATE - DOJ > 7030);

Q) UPDATE SALARY BY 20% WHERE EXP > 20 YEARS USING MONTHS_BETWEEN:


UPDATE EMP11 SET ESAL=ESAL*1.20 WHERE (SYSDATE - DOJ > 7300);


UPDATE EMP11 SET ESAL=ESAL*1.25 WHERE (MONTHS_BETWEEN(SYSDATE,DOJ))>20;

