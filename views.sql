-- Views
-- a virtual table based on the result-set of an SQL statement
-- the fields in a view are fields from one or more real tables in the database
-- they are not real tables, but can be intractedd with as if they were

SELECT * FROM employees;

CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;

SELECT * FROM employee_attendance
ORDER BY last_name ASC;

DROP VIEW employee_attendance;

SELECT * FROM customers;

ALTER TABLE customers
ADD COLUMN email VARCHAR(50);

UPDATE customers
SET email = "FFish@gmail.com"
WHERE customer_id = 1;

UPDATE customers
SET email = "LLob@gmail.com"
WHERE customer_id = 2;

UPDATE customers
SET email = "BBass@gmail.com"
WHERE customer_id = 3;

UPDATE customers
SET email = "PPuff@gmail.com"
WHERE customer_id = 4;

CREATE VIEW customer_emails AS
SELECT email
FROM customers;

SELECT * FROM customer_emails;

INSERT INTO customers
VALUES (5, "Pearl", "Krabs", NULL, "PKrabs@gmail.com");

SELECT * FROM customers;
