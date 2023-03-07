SELECT DISTINCT title
FROM titles

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%e';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
