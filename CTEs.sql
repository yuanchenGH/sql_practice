-- can only work immediately after creation
WITH CTE_Example AS
(SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) ct_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender)
SELECT *
FROM CTE_Example;

-- assign variables in the title
WITH CTE_Example (gender, avg_sal, max_sal, min_sal, ct_sal) AS
(SELECT gender, AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender)
SELECT *
FROM CTE_Example;

-- can create multiple CTEs and do operations just like tables
WITH CTE_Example AS
(SELECT employee_id, gender, birth_date
FROM employee_demographics dem
WHERE birth_date > '1985-01-01'),
CTE_Example2 AS
(SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000)
SELECT *
FROM CTE_Example c1
JOIN CTE_Example2 c2
 ON c1.employee_id = c2.employee_id;