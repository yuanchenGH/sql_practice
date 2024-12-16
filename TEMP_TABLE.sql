CREATE TEMPORARY TABLE temp_table1
(first_name varchar(50),
 last_name varchar(50),
 favorite_movie varchar(100)
);

SELECT *
FROM temp_table1;

INSERT INTO temp_table1
VALUES('Alex', 'Fred', 'Daggers Out');

SELECT *
FROM temp_table1;


CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;