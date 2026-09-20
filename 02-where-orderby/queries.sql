-- WHERE and ORDER BY Practice

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

-- WHERE: Find students with marks greater than 80
SELECT * FROM Student
WHERE marks > 80;

-- WHERE: Find students whose age is 20
SELECT * FROM Student
WHERE age = 20;

-- WHERE: Find students with marks less than 75
SELECT * FROM Student
WHERE marks < 75;

-- ORDER BY: Sort marks from lowest to highest
SELECT * FROM Student
ORDER BY marks ASC;

-- ORDER BY: Sort marks from highest to lowest
SELECT * FROM Student
ORDER BY marks DESC;

-- ORDER BY: Sort students by name alphabetically
SELECT * FROM Student
ORDER BY name ASC;
