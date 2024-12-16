SELECT age,
CASE
	WHEN age <30 THEN 'YOUNG' 
    WHEN age BETWEEN 30 AND 50 THEN 'MID_AGE'
    ELSE 'OLD'
END AS age_bracket
FROM employee_demographics;

SELECT first_name,
last_name,
dept.department_name,
salary,
CASE
	WHEN salary <= 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS raised_salary,
CASE
	WHEN dept.department_name = 'Finance' THEN salary * 0.1
    ELSE 0
END AS bonus
FROM employee_salary sal
JOIN parks_departments dept
ON sal.dept_id = dept.department_id