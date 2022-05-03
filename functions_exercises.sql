USE employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name DESC;

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no;

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;


SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12
AND (YEAR(hire_date) > 1989 AND YEAR(hire_date) < 2000)
ORDER BY birth_date ASC, hire_date DESC;

SELECT emp_no, DATEDIFF(NOW(), hire_date) AS 'DAYS WORKED'
FROM employees
WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12
  AND (YEAR(hire_date) > 1989 AND YEAR(hire_date) < 2000)
ORDER BY birth_date ASC, hire_date DESC;