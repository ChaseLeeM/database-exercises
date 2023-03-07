USE employees;

SELECT
       CONCAT(e.first_name, ' ', e.last_name) 'Department Manager',
         d.dept_name 'Department'
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
WHERE dm.to_date >= NOW()
ORDER BY d.dept_name;

SELECT
       CONCAT(e.first_name, ' ', e.last_name) 'Department Manager',
       d.dept_name 'Department'
FROM employees e
         JOIN dept_manager dm
              ON e.emp_no = dm.emp_no
         JOIN departments d
              ON dm.dept_no = d.dept_no
WHERE dm.to_date >= NOW() AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT titles.title AS 'Title', COUNT(*) AS 'Total'
FROM employees e
         JOIN titles
              ON e.emp_no = titles.emp_no
            JOIN dept_emp
              ON e.emp_no = dept_emp.emp_no
            JOIN departments
                ON dept_emp.dept_no = departments.dept_no
WHERE titles.to_date >= NOW() AND departments.dept_name = 'Customer Service'
GROUP BY titles.title
ORDER BY COUNT(*) DESC;

SELECT
    CONCAT(e.first_name, ' ', e.last_name) 'Department Manager',
    d.dept_name 'Department', s.salary AS 'Salary'
FROM employees e
         JOIN dept_manager dm
              ON e.emp_no = dm.emp_no
         JOIN departments d
              ON dm.dept_no = d.dept_no
         JOIN salaries s
              ON e.emp_no = s.emp_no
WHERE dm.emp_no = s.emp_no
  AND e.emp_no = s.emp_no
  AND dm.to_date >= NOW()
ORDER BY d.dept_name;