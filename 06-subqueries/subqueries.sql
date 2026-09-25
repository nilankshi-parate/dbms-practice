-- DBMS Practice - Day 06
-- Topic: SQL Subqueries


-- ==========================================
-- 1. CREATE TABLE
-- ==========================================

CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT
);


-- ==========================================
-- 2. INSERT DATA
-- ==========================================

INSERT INTO Student VALUES
(1, 'Rahul', 'CSE', 85),
(2, 'Aisha', 'CSE', 92),
(3, 'Rohan', 'AIDS', 76),
(4, 'Priya', 'AIDS', 88),
(5, 'Arjun', 'CSE', 69),
(6, 'Sneha', 'ECE', 91);


-- ==========================================
-- 3. DISPLAY ALL STUDENTS
-- ==========================================

SELECT * FROM Student;


-- ==========================================
-- 4. STUDENTS WHO SCORED ABOVE AVERAGE
-- ==========================================

SELECT name, marks
FROM Student
WHERE marks > (
    SELECT AVG(marks)
    FROM Student
);


-- ==========================================
-- 5. STUDENT WITH HIGHEST MARKS
-- ==========================================

SELECT name, marks
FROM Student
WHERE marks = (
    SELECT MAX(marks)
    FROM Student
);


-- ==========================================
-- 6. STUDENTS WHO SCORED BELOW AVERAGE
-- ==========================================

SELECT name, marks
FROM Student
WHERE marks < (
    SELECT AVG(marks)
    FROM Student
);


-- ==========================================
-- 7. STUDENTS FROM THE SAME
--    DEPARTMENT AS RAHUL
-- ==========================================

SELECT name, department
FROM Student
WHERE department = (
    SELECT department
    FROM Student
    WHERE name = 'Rahul'
);


-- ==========================================
-- 8. STUDENTS WHO SCORED
--    MORE THAN RAHUL
-- ==========================================

SELECT name, marks
FROM Student
WHERE marks > (
    SELECT marks
    FROM Student
    WHERE name = 'Rahul'
);


-- ==========================================
-- 9. STUDENT WITH MINIMUM MARKS
-- ==========================================

SELECT name, marks
FROM Student
WHERE marks = (
    SELECT MIN(marks)
    FROM Student
);


-- ==========================================
-- 10. CSE STUDENTS WHO SCORED
--     ABOVE THE OVERALL AVERAGE
-- ==========================================

SELECT name, marks
FROM Student
WHERE department = 'CSE'
AND marks > (
    SELECT AVG(marks)
    FROM Student
);
