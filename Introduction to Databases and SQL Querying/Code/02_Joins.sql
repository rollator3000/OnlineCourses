-- Create a 'MYEMPLOYEE'-DF & fill it with 3 rows
CREATE TABLE MYEMPLOYEE (EMPLOYEEID INT, FIRSTNAME VARCHAR(20), LASTNAME VARCHAR(20))

INSERT INTO MYEMPLOYEE VALUES (1, 'Michael', 'Scott')
INSERT INTO MYEMPLOYEE VALUES (2, 'Pam', 'Bessly')
INSERT INTO MYEMPLOYEE VALUES (3, 'Dwight', 'Schrutte')
SELECT * FROM MYEMPLOYEE 

-- Create a 'MYSALARY'-DF & fill it with 3 rows
CREATE TABLE MYSALARY (EMPLOYEEID INT, SALARY FLOAT)
INSERT INTO MYSALARY VALUES (1, 10000)
INSERT INTO MYSALARY VALUES (2, 8000)
INSERT INTO MYSALARY VALUES (3, 6000)
 
SELECT * FROM MYSALARY 


-- CREATE a 'PARKING'-DF
CREATE TABLE PARKING (EMPLOYEEID INT, PARKINGSPOT VARCHAR(20))
INSERT INTO PARKING VALUES (1, 'a1')
INSERT INTO PARKING VALUES (2, 'a2')

SELECT * FROM PARKING 


-- Create a Phone-DF
CREATE TABLE MYPHONE (EMPLOYEEID INT, PHONENUMBER INT)
INSERT INTO MYPHONE VALUES (1, 12345678)
INSERT INTO MYPHONE VALUES (2, 23456789)

SELECT * FROM MYPHONE 

-- Perform an inner Join
SELECT * FROM MYEMPLOYEE A INNER JOIN MYSALARY B ON A.EMPLOYEEID = B.EMPLOYEEID
SELECT A.FIRSTNAME, A.LASTNAME, B.SALARY FROM MYEMPLOYEE A INNER JOIN MYSALARY B ON A.EMPLOYEEID = B.EMPLOYEEID

-- Left-Outer-Join
SELECT * FROM MYEMPLOYEE A LEFT JOIN MYPHONE B ON A.EMPLOYEEID = B.EMPLOYEEID

--Right-Outer-Join
SELECT * FROM PARKING A RIGHT JOIN MYEMPLOYEE B ON A.EMPLOYEEID = B.EMPLOYEEID


-- Outter Join
CREATE TABLE MYCUSTOMER (ID INT, NAME VARCHAR(20))
INSERT INTO MYCUSTOMER VALUES(1, 'RAKESH')
INSERT INTO MYCUSTOMER VALUES(2, 'JOHN')
INSERT INTO MYCUSTOMER VALUES(3, 'BRE')

CREATE TABLE MYORDER (ORDERNUMBER INT, ORDERNAME VARCHAR(20), ID INT)
INSERT INTO MYORDER VALUES(1, 'LOL', 1)
INSERT INTO MYORDER VALUES(2, 'LEL', 2)
INSERT INTO MYORDER VALUES(3, 'ROFL', 7)
INSERT INTO MYORDER VALUES(4, 'XD', 8)

SELECT * FROM MYORDER
SELECT * FROM MYCUSTOMER

SELECT * FROM MYCUSTOMER A FULL OUTER JOIN MYORDER B ON A.ID = B.ID


-- CROSS JOIN
SELECT * FROM MYCUSTOMER
SELECT * FROM MYSALARY
SELECT * FROM MYCUSTOMER CROSS JOIN MYSALARY
