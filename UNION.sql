SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name 
FROM employee_salary;

# UNION == UNION DISTINCT, removing all duplicates
SELECT first_name, last_name 
FROM employee_demographics
UNION
SELECT first_name, last_name 
FROM employee_salary;

# UNION ALL concat all
SELECT first_name, last_name 
FROM employee_demographics
UNION ALL
SELECT first_name, last_name 
FROM employee_salary;

SELECT first_name, last_name, 'OLD MAN' AS Label 
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'OLD Lady' AS Label 
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'High Pay' AS Label 
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;