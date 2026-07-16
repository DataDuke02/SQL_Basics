-- INDEX (Btree data structures)
-- Indexs are used to find values within a specific column more quickly
-- MySQL normally searches sequentially through a column 
-- the longer the column, the more expensive the operations is
-- UPDATE takes more time, SELECT takes less time

SHOW INDEXES FROM customers;

CREATE INDEX last_name_idx
ON customers(last_name);

SELECT * FROM customers
WHERE last_name = "Puff";

SELECT * FROM customers
WHERE first_name = "Poppy";

CREATE INDEX last_name_first_name_idx
ON customers(last_name, first_name);

ALTER TABLE customers
DROP INDEX last_name_idx;

SELECT * FROM customers
WHERE last_name = "Puff" AND first_name = "Poppy";

-- subquery
-- a query within another query 
-- query (subquery)

SELECT * FROM employees;

SELECT AVG(hourly_pay) FROM employees;

SELECT first_name, last_name, hourly_pay, 
		(SELECT AVG(hourly_pay) FROM employees) AS avg_pay
FROM employees;

SELECT first_name, last_name, hourly_pay
FROM employees
WHERE hourly_pay > (SELECT AVG(hourly_pay) FROM employees);

SELECT first_name, last_name
FROM customers
WHERE customer_id IN
(SELECT DISTINCT customer_id 
FROM transcations 
WHERE customer_id IS NOT NULL); -- 1 2 3

SELECT first_name, last_name
FROM customers
WHERE customer_id NOT IN
(SELECT DISTINCT customer_id 
FROM transcations 
WHERE customer_id IS NOT NULL);  -- 5 4


