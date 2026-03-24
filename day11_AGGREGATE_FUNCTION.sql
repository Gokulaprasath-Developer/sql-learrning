-- GROUP BY: converting rows into summary tables
SELECT dept,avg(salary) FROM emp GROUP BY dept;

--DESCRPTIVE TABLE
SELECT dept
     MIN(salary) AS `MINIMUM_SALARY`,
     MAX(salary) AS `MAXIMUM_SALARY`,
     AVG(salary) AS `AVERAGE_SALARY`,
     SUM(salary) AS `TOTAL_SALARY`,
     COUNT(salary) AS `NO_OF EMPLOYEES`
FROM EMP
GROUP BY dept;

--WITH ROLLUP: GRAND TOTAL - total of subtotals
SELECT dept,SUM(salary) FROM emp GROUP BY dept WITH ROLLUP;

--PIVOT(GROUP BY)
SELECT gender,
      SUM(IF(dept = 'IT',salary,0) AS `IT`,
      SUM(IF(dept = 'SALES',salary,0) AS `SALES`,
      SUM(IF(dept = 'ACCOUNTS',salary,0) AS `ACCOUNTS`
FROM emp
GROUP BY gender;
