-- Day 1 SQL Practice

-- Q1: show all employee details
SELECT * FROM Employee;

-- Q2: display name and salary
SELECT name, salary FROM Employee;

-- Q3: employees with age greater than 30
SELECT * FROM Employee
WHERE age > 30;

-- Q4: list all departments
SELECT name FROM Department;

-- Q5: employees in IT department
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

-- Q9: total salary of employees
SELECT SUM(salary) 
FROM Employee;

-- Q10: average salary
SELECT AVG(salary) 
FROM Employee;
