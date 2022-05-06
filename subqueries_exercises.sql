USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name), e.emp_no, e.hire_date
FROM employees AS e
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );

SELECT t.title, e.first_name
FROM employees AS e
        JOIN titles t on e.emp_no = t.emp_no
WHERE e.first_name = 'Aamod';

SELECT t.title
FROM titles AS t
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
GROUP BY t.title;

SELECT e.first_name, e.last_name, e.gender
FROM employees AS e
WHERE e.gender = 'F'
AND e.emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    );

SELECT d.dept_name
FROM departments d
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    AND to_date > CURDATE()
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary = (SELECT MAX(salary) FROM salaries)
    );