CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    marks INT
);

INSERT INTO Students VALUES
(101, 'Arun', 85),
(102, 'Priya', 92),
(103, 'Rahul', 78),
(104, 'Sneha', 88);

SELECT * FROM Students;

SELECT student_name, marks
FROM Students
ORDER BY marks DESC;

SELECT student_name
FROM Students
WHERE marks >= 90;
