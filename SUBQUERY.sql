SELECT *
FROM employee_demographics
WHERE employee_id IN (
	SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1);

SELECT first_name,
salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- use subquery as a table to query
SELECT AVG(max_age)
FROM (
SELECT gender, 
AVG(age) avg_age,
MAX(age) max_age, 
MIN(age) min_age, 
COUNT(age) ct_age
FROM employee_demographics
GROUP BY gender
) AS agg_table;

    
