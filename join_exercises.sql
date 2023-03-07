USE employees;

# TODO: write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name AS 'Department',
CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01';

SELECT departments.dept_name AS 'Department',
CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F';

# TODO: Find the current titles of employees currently working in the Customer Service department.

SELECT titles.title, count(*) as 'Total'
FROM titles JOIN dept_emp AS dept ON titles.emp_no = dept.emp_no
JOIN departments on departments.dept_no = dept.dept_no
WHERE dept.to_date > now() AND titles.to_date > now() AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;


SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
         JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01';


SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee', departments.dept_name AS 'Department', CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager'
FROM employees
         JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
         JOIN departments ON dept_emp.dept_no = departments.dept_no
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees AS managers ON dept_manager.emp_no = managers.emp_no
WHERE dept_emp.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01';






