-- Day 2 SQL Practice

-- Q11: Employees hired in the year 2020
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2020;

-- Q12: Employees hired in January
SELECT * FROM Employee
WHERE MONTH(hire_date) = 1;

-- Q13: Employees hired before 2019
SELECT * FROM Employee
WHERE hire_date < '2019-01-01';

-- Q14: Employees hired after March 2021
SELECT * FROM Employee
WHERE hire_date > '2021-03-01';

-- Q15: Employees hired in the last 2 years
SELECT * FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

-- Q16: Total salary of all employees
SELECT SUM(salary) AS total_salary
FROM Employee;

-- Q17: Average salary of employees
SELECT AVG(salary) AS avg_salary
FROM Employee;

-- Q18: Minimum salary
SELECT MIN(salary) AS min_salary
FROM Employee;

-- Q19: Count employees in each department
SELECT department_id, COUNT(*) AS total_employees
FROM Employee
GROUP BY department_id;

-- Q20: Average salary by department
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;
