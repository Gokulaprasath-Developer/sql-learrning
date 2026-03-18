--To view live time

Select Current_time;
Select now();

--ANSI

Select Current_Timestamp;
-- #Let us take trains data
--Extract Time Parts:
Select ename,dept,departure,hour(departure),minute(departure),second(departure);
Select day(departure),time(departure),departure,hour(departure),minute(departure),second(departure);

--Time Arthimetic
--ADD TIME
Select addtime(arrival,'2:00') from trains;
Select addtime(arrival,'00:25') from trains;

--SUB TIME
Select subtime(arrival,'1:00') from trains; # for time format is important for arithmetic

--ANSI
Select departure,departure+interval '3' day from trains;
select departure,departure-interval '1' hour from trains;

--TIMEDIFF
Select trainid,trainsname,departure,arrival,timediff(arrival,departure) as `Journey_TIME' from trains;

--ANSI
Select extract(day from departure),extract(time from departure) from trains;  

--UTC Timezone
Select UTC_Timestamp(); 
