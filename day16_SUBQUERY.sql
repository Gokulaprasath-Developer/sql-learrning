--CORREALATED SUBQUERY 
SELECT * FROM emp A
WHERE salary = (SELECT MAX(salary) FROM emp WHERE dept = A.dept);#max salary in each dept
SELECT * FROM emp A
WHERE salary = (SELECT MIN(salary) FROM emp WHERE location = A.location);    

--TENSOR SUB QUERY/MULTI COLUMN SUB QUERY
     
SELECT * FROM emp 
WHERE (dept,salary) IN(SELECT dept,MAX(salary) FROM emp GROUP BY dept);
SELECT * FROM emp
WHERE dept = 'sales'
AND
salary = 10000;
--ROW CONSTRUCT
SELECT * FROM emp
WHERE (dept,salary) = ('sales',10000);
SELECT empid,ename,dept,salary,salary-(SELECT AVG(salary) FROM emp) AS `deviation` FROM emp;

--INLINE VIEW
SELECT * FROM (SELECT empid,ename,salary,salary/30 AS `PER_DAY` FROM emp) AS `TT`
WHERE per_day > 400;
