--NULL handling is Must for DATA.
--NULL should be handled properly

--NULL HANDLING
SELECT ename,COALESCE(location,'Not Available') AS `LOCATION` FROM emp;
SELECT empid,ename,dept,CONCAT(dept,'-',COALESCE(location,'NOT AVAILABLE)) FROM emp;

--CASE & NULL
SELECT empid,ename,dept
     CASE
         WHEN location is null THEN 'NOT AVAILABLE'
         ELSE location'
     END AS `LOCATION`
FROM emp;

--PIVOT: CONVERT ROW DATA TO COLUMN

  SELECT empid,ename,dept,
      IF(dept = 'IT',ename,' ') AS `IT`,
      IF(dept = 'sales',ename,' ') AS `SALES`,
      IF(dept = 'accounts',ename,' ') AS `ACCOUNTS`
  FROM emp;

--ONE HOT ENCODING: CATEGORIES TO COLUMN(ML USE)

SELECT empid,ename,dept,
     IF(dept = 'IT',1,0) AS `IT`
     IF(dept = 'SALES',1,0) AS `SALES`
     IF(dept = 'accounts',1,0) AS 'ACCOUNTS`
FROM emp;  
  

  
  
