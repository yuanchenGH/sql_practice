SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT LOWER('sKy');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT TRIM('          sky        ');
SELECT LTRIM('          sky        ');
SELECT RTRIM('          sky        ');

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

SELECT first_name, 
replace(first_name, 'a', 'z')
FROM employee_demographics;

SELECT locate('x', 'Alex');

SELECT first_name, locate('An', first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;