-- LIMIT

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

# start from row 2, and show the 1 row after it. 
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- Aliasing

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

# AS can be omitted
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;
