--DENSE_RANK() NO-SKIPS
SELECT ename,dept,salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS `RANK`
FROM emp;

--RANK() skip
SELECT ename,dept,salary,
RANK() OVER(ORDER BY salary DESC) AS `RANK`
FROM emp;
SELECT ename,dept,salary,
RANK() OVER(PARTITION BY dept ORDER BY salary DESC) AS `RANK`
FROM emp;
SELECT ename,dept,salary,
DENSE_RANK() OVER(PARTITION BY dept ORDER BY salary DESC) AS `RANK`
FROM emp;
--TOP 3:
WITH CTE AS(
SELECT ename,dept,salary,
DENSE_RANK() OVER(PARTITION BY dept ORDER BY salary DESC) AS `dense_rnk`
FROM emp)
SELECT * FROM CTE 
WHERE dense_rnk <= 3; 
--highst salary per dept
WITH CTE AS(
SELECT ename,dept,salary,
DENSE_RANK() OVER(PARTITION BY dept ORDER BY salary DESC) AS `rnk`
FROM emp)
SELECT * FROM CTE
WHERE rnk = 1;
--second highest rank
WITH CTE AS(
SEsLECT ename,dept,salary,
DENSE_RANK() OVER(PARTITION BY dept ORDER BY salary DESC) AS `rnk`
FROM emp)
SELECT * FROM CTE
WHERE rnk = 2;
--ROW_NUMBER -> unique(1,2,3,4)
--RANK -> skip(1,2,2,4)
--DENSE_RANK -> no_gap(1,2,2,3)
