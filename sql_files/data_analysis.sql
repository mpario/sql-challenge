-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
LEFT JOIN salaries s
ON s.emp_no = e.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1/1/1986' AND hire_date <= '12/31/1986';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
LEFT JOIN departments d
ON dm.dept_no = d.dept_no
LEFT JOIN employees e
ON dm.emp_no = e.emp_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE de.dept_no = 'd007';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e
ON de.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE de.dept_no = 'd007' OR de.dept_no = 'd005'
--ORDER BY d.dept_name ASC;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "last_name_count"
FROM employees
GROUP BY last_name
ORDER BY "last_name_count" DESC;

