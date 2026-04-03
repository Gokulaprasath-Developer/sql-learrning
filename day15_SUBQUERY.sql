#SINGLE-QUERY-SOLUTION(S-Q-S)
SELECT * FROM emp 
	WHERE salary = (SELECT MAX(salary) FROM emp); --#DYNAMIC EXPRESSION/SUB QUERY: one time query lifetime reliable result foe every execution.
SELECT * FROM emp
      WHERE salary = (SELECT MIN(salary) FROm emp);
SELECT * FROM emp
     WHERE salary < (SELECT MAX(salary) FROM emp)
     AND
     salary > (SELECT MIN(salary) FROM emp)
     AND
     dept = 'IT';
--FOR KNOWN & UNKNOWN VALUES USE SUB-QUERY.     
SELECT * FROM emp
	WHERE dept = (SELECT dept FROM emp WHERE empid = '105');--#SCALAR/ ON the right side provide only single value to avoid error
SELECT * FROM econ WHERE TYPE REGEXP 'landline';
SELECT * FROM einfo WHERE empid IN(105,109);
-- DYNAMIC VERSION
SELECT * FROM emp
     WHERE empid  IN(SELECT empid FROM econ WHERE type REGEXP 'landline');
SELECT * FROM einfo
INNER JOIN econ ON einfo.empid = econ.empid
WHERE type REGEXP 'landline';
