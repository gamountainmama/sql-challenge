-- Question 1
-- List the employee number, last name, first name, sex, and salary of each employee.

DROP VIEW IF EXISTS employees_all;

CREATE VIEW employees_all AS
SELECT employees.emp_no AS "Employee #", employees.last_name AS "Last Name", employees.first_name AS "First Name", employees.sex AS "Sex", CAST(salaries.salary as money) AS "Salary"
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no)
ORDER BY "Employee #";

SELECT * FROM employees_all;

-- Question 2
-- List the first name, last name, and hire date for the employees who were hired in 1986.

DROP VIEW IF EXISTS employees_hired_1986;

CREATE VIEW employees_hired_1986 AS
SELECT first_name AS "First Name", last_name AS "Last Name", hire_date AS "Hire Date"
FROM employees
WHERE hire_date BETWEEN '$1986-01-01' AND '$1986-12-31'
ORDER BY hire_date;

SELECT * FROM employees_hired_1986;

-- Question 3
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

DROP VIEW IF EXISTS managers;

CREATE VIEW managers AS
SELECT ds.dept_no AS "Department #", ds.dept_name AS "Department Name", dm.emp_no AS "Employee #", emp.last_name AS "Last Name", emp.first_name AS "First Name"
FROM departments as ds
JOIN dept_manager as dm
ON (ds.dept_no = dm.dept_no)
JOIN employees as emp
ON (dm.emp_no = emp.emp_no)
ORDER BY "Department #";

SELECT * FROM managers;

-- Question 4
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

DROP VIEW IF EXISTS emp_dept;

CREATE VIEW emp_dept AS
SELECT dp.dept_no AS "Department #", emp.emp_no AS "Employee #", emp.last_name AS "Last Name", emp.first_name AS "First Name", dp.dept_name AS "Department"
FROM employees AS emp
JOIN dept_emp AS de
ON (emp.emp_no = de.emp_no)
JOIN departments AS dp
ON (de.dept_no = dp.dept_no)
ORDER BY "Employee #";

SELECT * FROM emp_dept;

-- Question 5
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

DROP VIEW IF EXISTS hercules_b;

CREATE VIEW hercules_b AS
SELECT first_name AS "First Name", last_name AS "Last Name", sex AS "Sex"
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY "Last Name";

SELECT * FROM hercules_b;

-- Question 6
-- List each employee in the Sales department, including their employee number, last name, and first name.

DROP VIEW IF EXISTS sales_dept;

CREATE VIEW sales_dept AS
SELECT emp.emp_no AS "Employee #", emp.last_name AS "Last Name", emp.first_name AS "First Name"
FROM employees AS emp
JOIN dept_emp AS de
ON (emp.emp_no = de.emp_no)
JOIN departments AS dp
ON (de.dept_no = dp.dept_no)
WHERE dept_name = 'Sales'
ORDER BY "Last Name";

SELECT * FROM sales_dept;

-- Question 7
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

DROP VIEW IF EXISTS sales_dev;

CREATE VIEW sales_dev AS
SELECT emp.emp_no AS "Employee #", emp.last_name AS "Last Name", emp.first_name AS "First Name", dp.dept_name AS "Department"
FROM employees AS emp
JOIN dept_emp AS de
ON (emp.emp_no = de.emp_no)
JOIN departments AS dp
ON (de.dept_no = dp.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY "Employee #";

SELECT * FROM sales_dev;

-- Question 8
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

DROP VIEW IF EXISTS emp_last_freq;

CREATE VIEW emp_last_freq AS
SELECT last_name AS "Last Name", COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;

SELECT * FROM emp_last_freq;