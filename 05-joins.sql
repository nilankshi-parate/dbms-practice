-- DBMS Practice - Day 05
-- Topic: SQL JOINs

-- 1. Create Student table

CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    department_id INT
);


-- 2. Create Department table

CREATE TABLE Department (
    department_id INT,
    department_name VARCHAR(50)
);


-- 3. Insert data into Student

INSERT INTO Student VALUES
(1, 'Rahul', 101),
(2, 'Aisha', 101),
(3, 'Rohan', 102),
(4, 'Priya', 103),
(5, 'Arjun', 104);


-- 4. Insert data into Department

INSERT INTO Department VALUES
(101, 'CSE'),
(102, 'AIDS'),
(103, 'ECE'),
(105, 'ENTC');


-- ==================================================
-- INNER JOIN
-- Shows only matching records from both tables
-- ==================================================

SELECT Student.name, Department.department_name
FROM Student
INNER JOIN Department
ON Student.department_id = Department.department_id;


-- ==================================================
-- LEFT JOIN
-- Shows all records from Student
-- and matching records from Department
-- ==================================================

SELECT Student.name, Department.department_name
FROM Student
LEFT JOIN Department
ON Student.department_id = Department.department_id;


-- ==================================================
-- RIGHT JOIN
-- Shows all records from Department
-- and matching records from Student
-- ==================================================

SELECT Student.name, Department.department_name
FROM Student
RIGHT JOIN Department
ON Student.department_id = Department.department_id;


-- ==================================================
-- JOIN with WHERE
-- Find students belonging to CSE
-- ==================================================

SELECT Student.name, Department.department_name
FROM Student
INNER JOIN Department
ON Student.department_id = Department.department_id
WHERE Department.department_name = 'CSE';


-- ==================================================
-- JOIN with ORDER BY
-- Display students alphabetically
-- ==================================================

SELECT Student.name, Department.department_name
FROM Student
INNER JOIN Department
ON Student.department_id = Department.department_id
ORDER BY Student.name;
