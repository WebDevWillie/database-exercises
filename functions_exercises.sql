USE employees;

SELECT * FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';


SELECT CONCAT (first_name, ' ', last_name) AS full_name FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';


SELECT * FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';


SELECT * FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC;

SELECT DATEDIFF(now(), hire_date)
FROM employees
WHERE Month(birth_date)= 12
  AND DAY(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC;