--Conditional Expression; 'IF'-condition
#SHORT Version of CASE:
Select ename,dept,salary,if(Gender ="M",salary+2000,salary+1000) as `allowance` from emp;
Select empid,ename,salary,if(dept = "Sales",salary+3000, if(dept = "IT",salary+2000,salary+1000)) as `withallow` from emp;
Select ename,dept,salary,if(Gender = "M",'male','female') from emp;
# this is used for TRUE or false condition (condition,if_satisfied,not_satisfied).

--CASE : WHEN : END(MOST IMPORTANT) --DATA LABELLING
# BASIC SYNTAX
  Select ename,
      CASE
          WHEN condition THEN result
          ELSE result
      END AS alias
FROM emp;

Select empid,ename,dept,salary,
      CASE
          WHEN type = 'R' THEN 'REGULAR'
          WHEN type = 'T' THEN 'TEMPORARY'
          WHEN type = 'I' THEN 'INTERNSHIP'
          WHEN type = 'C' THEN 'CONTRACT'
       END AS 'Job_Type' FROM emp;

Select empid,ename,dept,salary,
    CASE
        WHEN type = 'R' THEN 'PERMANENT' ELSE 'TEMPORARY' 
    END AS 'RESOURCE_TYPE'
FROM emp;

-- ORDER BY : for specific Ordering
Select * from emp 
    ORDER BY CASE
          WHEN dept = 'SALES' THEN 1
          WHEN dept = 'ACCOUNTS' THEN 2
          WHEN dept = 'IT' THEN 3
     END;

Select * from emp ORDER BY length(ename);
Select * from emp ORDER BY substr(ename,1,3);

-- NULL CONDITION HANDLING

Select ename, IFNULL(location,'Not Available') from emp;
Select ename, COLLESCE(location,'Not Available') from emp;
