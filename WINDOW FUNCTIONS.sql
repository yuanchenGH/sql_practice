-- GROUP BY only show two unique values of gender
SELECT dem.first_name, dem.last_name, gender, AVG(salary)
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender;

-- OVER give a value to all rows
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER ()
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- Use PARTITION BY can give separete values to each category
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER (PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- rolling total
SELECT dem.first_name, dem.last_name, gender, salary, SUM(salary) OVER (PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- show row number based on everything
SELECT dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER ()
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- show row number based on everything
SELECT dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER (PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER (PARTITION BY gender ORDER BY salary DESC) AS row_rank,
DENSE_RANK() OVER (PARTITION BY gender ORDER BY salary DESC) AS dense_row_rank
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;