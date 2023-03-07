USE employees;

SELECT emp_no, first_name, last_name, gender
FROM employees WHERE gender = 'M'
                 AND first_name IN ('Irena','Maya','Vidya')
ORDER BY last_name DESC, first_name;


SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%e';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECt *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

SELECt *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(CURDATE(), hire_date) AS days_employed, first_name, last_name, hire_date, birth_date
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY days_employed DESC;
