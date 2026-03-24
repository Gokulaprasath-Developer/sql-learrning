--AGGERGATE FUNCTION: takes multiple rows and return single output
--TO COUNT
SELECT COUNT(*) FROM emp;
SELECT COUNT(column) FROM emp;
SELECT COUNT(EMPID) FROM emp;
SELECT COUNT(location) FROM emp; #only non-null values
SELECT COUNT(*)-COUNT(loacation) FROM emp;

--TO SUM(TOTAL)
SELECT SUM(salary) FROM emp;

--TO FIND MAX(HIGHEST)
SELECT MAX(salary) FROM emp;

--TO FIND MIN(LOWEST)
SELECT MIN(salary) FROM emp;

--AVG/TO FIND or PREDICT THE UNKNOWN VALUES
SELECT AVG(salary) FROM emp;

--F-O-Q(FOLLOW ON QUERY) = To get the result using step-by-step process
SELECT MAX(salary) FROM emp;
SELECT * FROM emp WHERE salary = 60000;

--DEVIATIONS: TO FIND THE ANOMALIES
SELECT empid,ename,dept,salary,salary-10000 AS `DEVIATIONS` FROM emp

--DISTINCT: will take a sample of entity
SELECT COUNT(DISTINCT dept) FROM emp;
SELECT DISTINCT dept FROM emp;
