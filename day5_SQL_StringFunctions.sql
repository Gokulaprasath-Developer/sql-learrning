--function: takes a input and return a value
--Upper: convert character to uppercase
Select ename,UPPER(ename) from emp;

--Lower: convert character to lowercase
Select ename,LOWER(ename) from emp;

--length: count character
Select ename,LENGTH(ename) from emp;

--Replace: Replace text
Select ename,REPLACE(dojoin,'-','/') from emp;

--Trim: remove spaces
Select TRIM(' ARJUN ');

--Concat: combine text
Select CONCAT(ename,'work in',dept) from emp;

--Concat_ws: ws- with separator 
Select CONCAT_WS('-',ename,dept,location) from emp;

--Substr: Extract character substr(colum,start,length)
Select ename, SUBSTR(ename,1,3) from emp;

--instr: Find position
Select ename, INSTR(ename,'a') from emp;

#to find first name.
  Select trim(substr(ename,1,instr(ename,' '))) as first_name from emp;
#to find last name.
  Select trim(substr(ename,instr(ename,' '))) as last name from emp;
#used supporting arguments
