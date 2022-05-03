USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'e%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya')
    OR first_name = 'Maya';

SELECT first_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    AND gender = 'male';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
    OR last_name Like '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
   AND last_name Like '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';