-- Day 1 SQL Practice

-- Q1: display all employee details
SELECT * FROM Employee;

-- Q2: get only name and salary
SELECT name, salary FROM Employee;

-- Q3: employees older than 30
SELECT * FROM Employee
WHERE age > 30;

-- Q4: list all department names
SELECT name FROM Department;

-- Q5: employees working in IT department
SELECT e.*
FROM Employee e
JOIN Department d 
ON e.department_id = d.department_id
WHERE d.name = 'IT';

-- Q6: names starting with J
SELECT * FROM Employee
WHERE name LIKE 'J%';

-- Q7: names ending with 'e'
SELECT * FROM Employee
WHERE name LIKE '%e';

-- Q8: names containing 'a'
SELECT * FROM Employee
WHERE name LIKE '%a%';

-- Q9: total salary of all employees
SELECT SUM(salary) AS total_salary
FROM Employee;

-- Q10: average salary
SELECT AVG(salary) AS avg_salary
FROM Employee;
