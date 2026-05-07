-- Day 3 SQL Practice

-- Q21: Total salary by department
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

-- Q22: Average age by department
SELECT department_id, AVG(age) AS avg_age
FROM Employee
GROUP BY department_id;

-- Q23: Number of employees hired each year
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS total_employees
FROM Employee
GROUP BY YEAR(hire_date);

-- Q24: Maximum salary in each department
SELECT department_id, MAX(salary) AS max_salary
FROM Employee
GROUP BY department_id;

-- Q25: Departments having more than 1 employee
SELECT department_id, COUNT(*) AS total_employees
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 1;

-- Q26: Departments with average salary greater than 50000
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 50000;

-- Q27: Employees ordered by salary ascending
SELECT * FROM Employee
ORDER BY salary ASC;

-- Q28: Employees ordered by age descending
SELECT * FROM Employee
ORDER BY age DESC;

-- Q29: Top 3 highest paid employees
SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 3;

-- Q30: Employees with department names
SELECT e.name, d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;
