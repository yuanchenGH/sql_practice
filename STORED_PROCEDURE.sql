USE `parks_and_recreation`;

CREATE PROCEDURE large_salaries()
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

-- change the delimiter so I can add more ; in the middle of the the
DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >= 50000;
    SELECT * 
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries2();

-- parameters
DROP procedure IF EXISTS `large_salaries3`;
DELIMITER $$
CREATE PROCEDURE large_salaries3(id INT)
BEGIN
	SELECT first_name, last_name, salary 
	FROM employee_salary
	WHERE employee_id = id;
END $$
DELIMITER ;

CALL large_salaries3(1);