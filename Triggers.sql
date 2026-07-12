-- Trigger = when an event happens, do something
--   		 ex. (INSERT, UPDATE, DELETE)
--  		 benefits = checks data, handles errors, auditing tables

SELECT * FROM employees;

ALTER TABLE employees
ADD COLUMN salary DECIMAL (10, 2) AFTER hourly_pay;

UPDATE employees
SET salary = hourly_pay * 2080;

UPDATE employees
SET hourly_pay = 21.00
WHERE employee_id = 4;

UPDATE employees
SET hourly_pay = 30.00
WHERE employee_id = 1;

CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

SHOW TRIGGERS;

UPDATE employees
SET hourly_pay = 50
WHERE employee_id = 1;

UPDATE employees
SET hourly_pay = hourly_pay + 1;

DELETE FROM employees
WHERE employee_id = 6;

CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees
FOR EACH ROW 
SET NEW.salary = (NEW.hourly_pay * 2080);

INSERT INTO employees
VALUE (7, "Sheldon", "Plankton", "shelplan@gmail.com", "janitor", "+116549875156", 10.50, NULL, "2024-01-09", 5);

DROP TABLE expenses;

CREATE TABLE expenses(
	expense_id INT PRIMARY KEY,
    expense_name VARCHAR(50),
    expense_total DECIMAL(10, 2)
);

INSERT INTO expenses
VALUES	(1, "salaries", 0),
		(2, "supplies", 0),
        (3, "taxes", 0);
        
SELECT * FROM expenses;

UPDATE expenses
SET expense_total = (SELECT SUM(salary) FROM employees)
WHERE expense_name = "salaries";

CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW 
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

DELETE FROM employees
WHERE employee_id = 7;

CREATE TRIGGER after_salary_insert
AFTER INSERT ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";

INSERT INTO employees
VALUE (7, "Sheldon", "Plankton", "shelplan@gmail.com", "janitor", "+116549875156", 10.50, NULL, "2024-01-09", 5);

CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + (NEW.salary - OLD.salary)
WHERE expense_name = "salaries";


UPDATE employees
SET hourly_pay = 100
WHERE employee_id = 1;

SELECT * FROM expenses;
