SELECT * FROM ecity;
SELECT * FROM econ;
SELECT * FROM edept; 
SELECT * FROM einfo;
SELECT * FROM einfo,edept; --catesan product: duplication DATA(will appear when table joined without JOIN condition)

--INNER JOIN: return only matching rows from both sides
SELECT * FROM einfo INNER JOIN edept ON einfo.deptid = edept.deptid; 
SELECT einfo.empid,einfo.ename,einfo.salary,edept.deptname,edept.deptid FROM einfo 
INNER JOIN edept ON einfo.deptid = edept.deptid;
SELECT einfo.empid,einfo.ename,einfo.salary,ecity.city FROM einfo
INNER JOIN ecity ON einfo.cityid = ecity.cityid;
SELECT einfo.empid,einfo.ename,einfo.salary,edept.deptname,ecity.city FROM
einfo INNER JOIN edept ON einfo.deptid = edept.deptid
INNER JOIN ecity ON einfo.cityid = ecity.cityid ORDER BY empid;

--use alias

SELECT A.empid,A.ename,A.salary,B.deptname,C.city FROM
einfo AS A INNER JOIN edept AS B ON A.deptid = B.deptid
INNER JOIN ecity AS C ON A.cityid = C.cityid ORDER BY empid;
SELECT A.empid,A.ename,A.salary,B.deptname,C.city FROM
einfo A INNER JOIN edept B ON A.deptid = B.deptid
INNER JOIN ecity C ON A.cityid = C.cityid
WHERE deptname ='IT'; 

--group by

SELECT deptid,SUM(salary) FROM einfo
GROUP BY deptid;
SELECT edept.deptname,SUM(einfo.salary) FROM einfo
INNER JOIN edept ON einfo.deptid = edept.deptid
GROUP BY deptname;
SELECT edept.deptname AS `DEPARTMENT`,SUM(einfo.salary) AS `SALARY_EXP` FROM
einfo INNER JOIN edept ON einfo.deptid = edept.deptid
GROUP BY deptname 
ORDER BY department;

--LEFT JOIN:matching records and all records from left side
SELECT A.EMPID,A.ENAME,A.SALARY,B.CITY
FROM EINFO A
LEFT JOIN ECITY B ON A.CITYID = B.CITYID;

--RIGHT JOIN: matching records and all records from right side
SELECT A.EMPID,A.ENAME,A.SALARY,B.CITY
FROM EINFO A
RIGHT JOIN ECITY B ON A.CITYID = B.CITYID;

--FULL JOIN won't WORK SO,UNION : takes both matching and non-matching records
SELECT A.EMPID,A.ENAME,A.SALARY,B.CITY
FROM EINFO A
LEFT JOIN ECITY B ON A.CITYID = B.CITYID
UNION
SELECT A.EMPID,A.ENAME,A.SALARY,B.CITY
FROM EINFO A
RIGHT JOIN ECITY B ON A.CITYID = B.CITYID;

SELECT * FROM einfo;
--SELF JOIN: data from same table so duplicationcopy of same table (PK=FK in a same table)
SELECT A.EMPID,A.ENAME,A.MANAGERID,
       B.EMPID,B.ENAME AS `MANAGER_NAME`
FROM EINFO A       
INNER JOIN EINFO B ON A.MANAGERID = B.EMPID ORDER BY A.EMPID;

--INDEX TABLE: WILL IMPROVE QUERY PERFORMANCE

SELECT * FROM emp;
CREATE INDEX EMP_EMPID ON EMP(empid);
CREATE INDEX EMP_ENAME ON EMP(ename);
CREATE INDEX EMP_DESIG_location ON EMP(desig,location);#(COMPOUND INDEX)-HIGH unique VALUES.

--TO DROP INDEX
DROP INDEX EMP_ENAME ON emp;

-- TO VIEW INDEX CREATED

SHOW INDEXES FROm emp;
--NOW
SELECT * FROM EMP WHERE empid = 110;
