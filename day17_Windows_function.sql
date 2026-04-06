--WINDOWS FUNCTION:do calculations across rows but not group like GROUP BY
--USED FOR ranking,running total,analytics.
--OVER()
SELECT empid,ename,dept,salary,
    salary-avg(salary) OVER() AS `deviation`
    FROM emp;
--OVER(ORDER BY) running totals,ranking,row numbers
--like adding salary per rows
SELECT ename,dept,salary,SUM(salary) OVER() FROM emp;
SELECT empid,ename,dept,salary,SUM(salary)
OVER(ORDER BY empid ASC) AS `TOTAL` FROM emp; #RUNNING TOTALS
SELECT empid,ename,dept,salary,SUM(salary) 
OVER(ORDER BY dept) AS `TOTAL` FROM emp;

--OVER(PARTITION BY): split data into groups but still show in all rows.
SELECT empid,ename,dept,salary,SUM(salary) 
OVER(PARTITION BY dept) AS `TOTAL` FROM emp;
SELECT empid,ename,dept,salary,
AVG(salary) OVER() AS `Avgsal`,
SUM(salary) OVER() AS `TOTsal`,
MAX(salary) OVER(PARTITION BY dept) AS `CompanyHIGH`,
MIN(salary) OVER(PARTITION BY dept) AS `CL`,
COUNT(empid) OVER(PARTITION BY dept)
FROM emp;
SELECT empid,ename,dept,salary,SUM(salary) OVER(PARTITION BY dept ORDER BY salary) 
  FROM emp;
--ACT AS temporaray 'view' after execution CTE automatically destroy itself SO, we can use WHERE = calculated column
--CTE = COMMON TABLE EXPRESSION
WITH CTE AS(
SELECT empid,ename,dept,salary,
MAX(salary) OVER(PARTITION BY dept) AS `DEPTHIGH`FROM emp)
SELECT * FROM CTE WHERE salary = depthigh; 

WITH CTE AS(
SELECT empid,ename,dept,salary,salary-AVG(salary) OVER() AS `DIVIATION`
FROM EMP)
SELECT * FROM CTE
	WHERE diviation = (SELECT MAX(diviation) FROM CTE);
