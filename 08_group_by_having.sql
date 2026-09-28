-- DBMS 08: GROUP BY and HAVING

CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 'IT', 50000),
(2, 'Riya', 'HR', 40000),
(3, 'Rahul', 'IT', 60000),
(4, 'Sneha', 'HR', 45000),
(5, 'Neha', 'Sales', 55000);

-- GROUP BY
SELECT department, COUNT(*) AS total_employees
FROM Employee
GROUP BY department;

-- GROUP BY with SUM
SELECT department, SUM(salary) AS total_salary
FROM Employee
GROUP BY department;

-- HAVING
SELECT department, AVG(salary) AS average_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 45000;
