CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO Employees VALUES
(1, 'John', 'IT', 50000),
(2, 'Alice', 'HR', 45000),
(3, 'Bob', 'IT', 60000),
(4, 'Emma', 'Finance', 55000);

SELECT * FROM Employees;

SELECT employee_name, salary
FROM Employees
WHERE salary > 50000;

SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department;
