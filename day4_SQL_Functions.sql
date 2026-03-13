--Querying description column: column that contains text description
--LIKE AND REGEXP OPERATOR are used [REGEXP>LIKE]
Select * from emp where desig like '%ar%';
Select * from emp where ename like 'A%'; #starts_with
Select * from emp where ename like '%h'; #ends_with

--REGEXP: Regular expression powerfull than LIKE.
Select * from plt where product_description regexp 'FHD';
Select * from plt where processor regexp '12th';
Select * from plt where product_description '^new';#starts_with
Select * from plt where product_description 'new%';#ends_with
Select * from emp where ename regexp '^(A|S)'; #name starts with A or S
Select * from emp where ename regexp '^(ASN)'; #name starts with A or S or N
Select * from plt where processor like '%1_%'; #'_' means any number after 1.
Select * from emp where ename like '____'; #4 - '_' meant name with 4 characters.
Select * from emp where dojoin like '2023%';
Select * from emp where mobile regexp '^9.8'; #'.' is meant any values in REGEXP



