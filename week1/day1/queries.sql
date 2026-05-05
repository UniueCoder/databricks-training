-- Day 1 SQL Practice

-- Q1: Retrieve all columns from Employee
SELECT * FROM Employee;

-- Q2: Retrieve name and salary of employees
SELECT name, salary FROM Employee;

-- Q3: Employees with age greater than 30
SELECT * FROM Employee
WHERE age > 30;

-- Q4: Names of all departments
SELECT name FROM Department;

-- Q5: Employees in IT department
SELECT e.*
FROM Employee e
JOIN Department d 
ON e.department_id = d.department_id
WHERE d.name = 'IT';

-- Q6: Names starting with 'J'
SELECT * FROM Employee
WHERE name LIKE 'J%';

-- Q7: Names ending with 'e'
SELECT * FROM Employee
WHERE name LIKE '%e';

-- Q8: Names containing 'a'
SELECT * FROM Employee
WHERE name LIKE '%a%';

-- Q9: Names with exactly 9 characters
SELECT * FROM Employee
WHERE LENGTH(name) = 9;

-- Q10: Names starting with any one character followed by 'o'
SELECT * FROM Employee
WHERE name LIKE '_o%';
