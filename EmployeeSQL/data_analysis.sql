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