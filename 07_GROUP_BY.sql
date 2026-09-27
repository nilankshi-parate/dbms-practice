CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    department VARCHAR(20),
    marks INT
);

INSERT INTO Student VALUES
(1, 'Rahul', 'CSE', 85),
(2, 'Priya', 'CSE', 90),
(3, 'Aman', 'AIDS', 78),
(4, 'Sneha', 'AIDS', 88),
(5, 'Riya', 'ECE', 75),
(6, 'Karan', 'ECE', 82);

SELECT * FROM Student;

-- Count students in each department
SELECT department, COUNT(*) AS total_students
FROM Student
GROUP BY department;

-- Average marks of each department
SELECT department, AVG(marks) AS average_marks
FROM Student
GROUP BY department;

-- Highest marks in each department
SELECT department, MAX(marks) AS highest_marks
FROM Student
GROUP BY department;

-- Lowest marks in each department
SELECT department, MIN(marks) AS lowest_marks
FROM Student
GROUP BY department;
