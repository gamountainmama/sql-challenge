-- List the employee number, last name, first name, sex, and salary of each employee.
DROP VIEW employees_all;

CREATE VIEW employees_all AS
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no);

SELECT * FROM employees_all;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

DROP VIEW employees_hired_1986;

CREATE VIEW employees_hired_1986 AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '$1986-01-01' AND '$1986-12-31'
ORDER BY hire_date;

SELECT * FROM employees_hired_1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

DROP VIEW managers;

CREATE VIEW managers AS
SELECT ds.dept_no, ds.dept_name, dm.emp_no, emp.last_name, emp.first_name
FROM departments as ds
JOIN dept_manager as dm
ON (ds.dept_no = dm.dept_no)
JOIN employees as emp
ON (dm.emp_no = emp.emp_no)
ORDER BY dept_no;

SELECT * FROM managers;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

DROP VIEW emp_dept;

CREATE VIEW emp_dept AS
SELECT emp.emp_no, emp.last_name, emp.first_name, dp.dept_name
FROM employees as emp
JOIN dept_emp as de
ON (emp.emp_no = de.emp_no)
JOIN departments as dp
ON (de.dept_no = dp.dept_no)
ORDER BY emp_no;

SELECT * FROM emp_dept;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

DROP VIEW hercules_b;

CREATE VIEW hercules_b AS
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

SELECT * FROM hercules_b;

-- List each employee in the Sales department, including their employee number, last name, and first name.

DROP VIEW sales_dept;

CREATE VIEW sales_dept AS
SELECT emp.emp_no, emp.last_name, emp.first_name
FROM employees as emp
JOIN dept_emp as de
ON (emp.emp_no = de.emp_no)
JOIN departments as dp
ON (de.dept_no = dp.dept_no)
WHERE dept_name = 'Sales';

SELECT * from sales_dept;

