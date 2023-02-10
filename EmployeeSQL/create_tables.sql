--Create titles table

DROP TABLE titles;

CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR(50) NOT NULL);
	
SELECT * FROM titles;

--Create employees table

DROP TABLE employees;

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,	
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(10) NOT NULL, 
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));
	
SELECT * FROM employees;

--Create salaries table

DROP TABLE salaries;

CREATE TABLE salaries(
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
SELECT * FROM salaries;

--Create departments table

DROP TABLE departments;

CREATE TABLE departments(
	dept_no	VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL);
	
SELECT * FROM departments;

--Create department employees table

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,	
	dept_no	VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
	
SELECT * FROM dept_emp;

--Create department managers table

DROP TABLE dept_manager;

CREATE TABLE dept_manager(
	id SERIAL PRIMARY KEY,
	dept_no	VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
SELECT * FROM dept_manager;
