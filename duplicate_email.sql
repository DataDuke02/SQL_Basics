SELECT email, COUNT(*) AS count
FROM Employees
GROUP BY email
HAVING COUNT(*) > 1;
