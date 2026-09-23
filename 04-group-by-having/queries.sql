-- GROUP BY and HAVING Practice

CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT
);

INSERT INTO Student VALUES
(1, 'Rahul', 'CSE', 85),
(2, 'Aisha', 'CSE', 92),
(3, 'Rohan', 'AIDS', 76),
(4, 'Priya', 'AIDS', 88),
(5, 'Arjun', 'CSE', 69),
(6, 'Sneha', 'ECE', 91),
(7, 'Karan', 'ECE', 78);

-- GROUP BY: Count students in each department
SELECT department, COUNT(*) AS total_students
FROM Student
GROUP BY department;

-- GROUP BY: Find average marks for each department
SELECT department, AVG(marks) AS average_marks
FROM Student
GROUP BY department;

-- GROUP BY: Find highest marks in each department
SELECT department, MAX(marks) AS highest_marks
FROM Student
GROUP BY department;

-- GROUP BY: Find total marks for each department
SELECT department, SUM(marks) AS total_marks
FROM Student
GROUP BY department;

-- HAVING: Show departments with more than 2 students
SELECT department, COUNT(*) AS total_students
FROM Student
GROUP BY department
HAVING COUNT(*) > 2;

-- GROUP BY + HAVING: Show departments with average marks above 80
SELECT department, AVG(marks) AS average_marks
FROM Student
GROUP BY department
HAVING AVG(marks) > 80;
