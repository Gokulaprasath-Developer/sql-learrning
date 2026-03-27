--SET OPERATORS: combines result of two SELECT queries
-- UNION: COMBINES result of TWO queries
SELECT ename FROM emp WHERE dept = 'IT'
UNION
SELECT ename FROM emp WHERE dept = 'sales';# removes duplicate

SELECT ename FROM emp WHERE dept = 'IT'
UNION ALL
SELECT ename FROM emp WHERE dept = 'sales';# keeps duplicate

--INTERSECT: RETURNS common rows in both queries

SELECT customer_id FROM blinkit
INTERSECT
SELECT customer_id FROM zomato; 

--EXCEPT: rows in first query but not in second query

SELECT ename FROM emp WHERE dept = 'SALES'
EXCEPT
SELECT ename FROM emp WHERE salary = 30000;

--CUSTOMER ENGAGEMENT: CHURN RATE
SELECT customer_id,customer_name FROM zomato WHERE MONTH(order_date) = 1
SELECT customer_id,customer_name FROM zomato WHERE MONTH(order_date) = 2;
