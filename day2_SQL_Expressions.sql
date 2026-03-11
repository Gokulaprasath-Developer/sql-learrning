-- Numeric Operator +, -, *, /
--Numeric expression: performing calculations on numeric column
Select ename,dept,type,salry+100 as hike from emp;

--Static expression: a fixed value written directly in the query
Select empid,ename,dept,salary,1200 as bonus from emp;

--Dynamic expression: also Know as Calculated column calculates a value using columns
Select empid,ename,dept,type,salary,salary/30*6+salary as OT_increment from emp;
Select ename,empid,dept,salary,salary*12 as Annual_salary from emp;

--Relational expression: <, >, =, =!, >=, <=
-- where clause used 
Select * from emp where dept = 'sales';
Select * from emp where salary >= 20000;

--Logical operators: AND-both conditions are true   OR-either condition is true
-- where clause is used
Select * from emp salary > 15000 and salary <=450000;
Select * from emp dept = 'sales' or dept = 'it'; 


