--datatypes: what kind of data 
--Constraints: Rule inside DB
--Validation: Rule outside DB
--CHAR(10): fixed length- 'ram          '(waste space)
--VARCHAR(10):variable legth- 'ram'(only 3 chars)
--USE VARCHAR in 90% area and CHAR only for fixed data like (GENDER,PIN).
--number-int/decimals
--text-varchar
--phone-varchar(not INT)
--fixedsize-char(rare)
--money-decimal(not FLOAT)
--always use constraints-(Checks,NOT NULL)
--DATA INTEGRITY:
--1)data type: mobileno VARCHAR(10)
--2)constraints: lenght(mobileno)=10
--3)programme Validation: SEND OUTPUT
--VARCHAR2-ORCALE 

--DDL:data definition language(CREATE,ALTER,DELETE,TRUNCATE)=for TABLE DESIGN.
--DML:data manupulation language(INSERT,UPDATE,DELETE,SELECT)=for ROW INSIDE TABLE.

CREATE TABLE customer(
cid INT PRIMARY KEY,
cname VARCHAR(30),
odate DATE,
phone VARCHAR(10),
amount DECIMAL(7,2) CHECK (amount >= 0)
);
INSERT INTO customer(cid,cname,odate,phone,amount)
 VALUES (100,'GOKUL',NULL,NULL,NULL);
INSERT INTO customer VALUES (101,'VIJAY',NULL,NULL,NULL);

UPDATE customer
SET amount = 200
WHERE cid = 101;

UPDATE customer
SET phone = 9042667914
where cid = 100;

DELETE FROM customer
WHERE cid = 100;

SELECT  * FROM customer;

--to disable safe mode temporarily
SET SQL_SAFE_UPDATES = 0;

--AFTER finishing
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM customer 
WHERE phone is NULL;
SET SQL_SAFE_UPDATES = 1;

--to delete specific column
ALTER TABLE bmw
DROP COLUMN jod;

--DELETE - rows with where
--TRUNCATE - all rows(no where)
--DROP - entire table
--DROP - spcific column
