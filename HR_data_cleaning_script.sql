-- Data cleaning

USE projects;

SELECT * FROM hr;

ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

DESCRIBE hr;


-- Changing birthdate column to date format
SELECT birthdate FROM hr;

SET sql_safe_updates = 0;

UPDATE hr
SET birthdate = CASE
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE null
END;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;

-- Changing hire date column to date format
UPDATE hr
SET hire_date = CASE
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE null
END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

SET sql_mode = '';

-- Changing termdate column to date formate
UPDATE hr
SET termdate = date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NOT NULL AND termdate !='';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

SELECT termdate FROM hr;


ALTER TABLE hr ADD COLUMN age INT;

SELECT * FROM hr;

UPDATE hr
SET age = timestampdiff(YEAR,birthdate,CURDATE());

SELECT
	min(age) AS youngest,
    MAX(age) AS oldest
FROM hr;

SELECT count(*) FROM hr WHERE age < 18;
