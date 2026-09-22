-- Aggregate Functions Practice

CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    age INT,
    marks INT
);

INSERT INTO Student VALUES
(1, 'Rahul', 20, 85),
(2, 'Aisha', 19, 92),
(3, 'Rohan', 21, 76),
(4, 'Priya', 20, 88),
(5, 'Arjun', 22, 69);

-- COUNT: Count the total number of students
SELECT COUNT(*) AS total_students
FROM Student;

-- SUM: Find the total marks
SELECT SUM(marks) AS total_marks
FROM Student;

-- AVG: Find the average marks
SELECT AVG(marks) AS average_marks
FROM Student;

-- MAX: Find the highest marks
SELECT MAX(marks) AS highest_marks
FROM Student;

-- MIN: Find the lowest marks
SELECT MIN(marks) AS lowest_marks
FROM Student;

-- COUNT with WHERE: Count students who scored above 80
SELECT COUNT(*) AS students_above_80
FROM Student
WHERE marks > 80;
