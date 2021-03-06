USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
        JOIN dept_manager AS dm
            ON e.emp_no = dm.emp_no
        JOIN departments AS d
            ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE();

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE() AND e.gender = 'F';

SELECT t.title AS Title, COUNT(t.emp_no) AS Total
FROM titles AS t
         JOIN employees e ON e.emp_no = t.emp_no
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date > CURDATE() AND d.dept_no = 'd009' AND de.to_date > CURDATE()
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS Salary
FROM employees AS e
        JOIN dept_manager AS dm
            ON e.emp_no = dm.emp_no
        JOIN departments AS d
            ON d.dept_no = dm.dept_no
        JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date > CURDATE() AND s.to_date > CURDATE();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       d.dept_name AS Department,
       CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees AS e
        JOIN dept_emp de on e.emp_no = de.emp_no
        JOIN departments d on de.dept_no = d.dept_no
        JOIN dept_manager dm on de.emp_no = dm.emp_no
        JOIN employees e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date > CURDATE() AND dm.to_date > CURDATE();