--Current_Date/now()
Select dojoin,year(dojoin),month(dojoin),day(dojoin) from emp;

--To view date & time(LIVE)
Select current_date(),Current_time(),now() from dual; 
Select now() from dual; # this will automatically display both

--Date arithmetic: sub & add
Select dojoin,subdate(dojoin,5) as PROCESS_DOC from emp;
Select empid,ename,dept,dojoin,addate(dojoin,90) as TRAINING from emp;

--datediff FUNCTION
Select empid,ename,dobirth,datediff(Current_date,dobirth)/365.25 as C_AGE from emp; #365.25- because of leap year
Select ename,dojoin,datediff(current_date,dojoin)/365.25 as 'year_of_work' from emp;

--DATE_FORMAT
Select DATE_FORMAT(dojoin,'%m-%d-%y') from emp;
