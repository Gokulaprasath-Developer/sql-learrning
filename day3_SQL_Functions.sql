-- Querying text column: sigle quote is important to address
Select * from emp where dept = 'IT';

--to check name starting from any alphabet
select * from emp where ename like 'A%';

--Between Operator: used to find inbetween two values
Select * from emp where salary between 10000 and 50000

--IN operator: replacement of OR operator-it is used to check exact values
Select * from emp where location IN ('chennai','bangalore','delhi');

--Date queries: usedto check valus like DOJ and DOB.
Select * from emp where dojoin >= 2020-12-01 and dojoin <= 2020-01-01;
#ISO FORMAT - yyyy-mm-dd
#BRITISH FORMAT - dd-mm-yyyy
#US FORMAT - mm-dd-yyyy
#1st quater, 2nd Quater, 3rd quater - Financial yr(3months per Quater)
#for india-APRIL
#Other country-(jan-dec)
Select * from emp where dobirth>= 2000-07-08;

--NULL values:to find null values
Select * from emp where location is null;

--NOT NULL: vice versa
Select * from emp where location is not null;
