CREATE DATABASE myDB;
USE myDB;

CREATE TABLE employees(
	employee_id INT,
    first_name VARCHAR(100),
	last_name VARCHAR(100),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

ALTER TABLE EMPLOYEES
ADD phone_number VARCHAR(15)
AFTER email;

ALTER TABLE employees
RENAME COLUMN phone_number to email;

ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100)
AFTER last_name;

SELECT * FROM employees;

INSERT INTO employees
VALUES  (1, "Thiru", "S", "tsura@gmail.com","+116534972043",25.50,"2023-01-02"), 
		(2, "Squidward", "Tentacles", "squidtent@gmail.com","+114534564543",15.50,"2024-01-04"), 
		(3, "Spongebob", "Squarepants", "spongsquare@gmail.com","+114284356773",20.50,"2023-03-06"), 
		(4, "Patricia", "Kayy", "itspatikay@gmail.com","+115438685438",12.50,"2022-11-26"), 
		(5, "Sandy", "Cheeks", "sandsalt@gmail.com","+114536266781",11.50,"2023-02-05");
        
SELECT * FROM employees;  # '*' is symplize ALL COLUMNS in table
