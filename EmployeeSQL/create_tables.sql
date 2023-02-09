--Create departments table

DROP TABLE departments;

CREATE TABLE departments(
	dept_no	VARCHAR(5) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL);
	
SELECT * FROM departments;

--Create department employees table

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,	
	dept_no	VARCHAR(5) NOT NULL);
	
SELECT * FROM dept_emp;

--Create department managers table

DROP TABLE dept_manager;

CREATE TABLE dept_manager(
	dept_no	VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY);
	
SELECT * FROM dept_manager;

--Create employees table

DROP TABLE employees;

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE,	
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1), 
	hire_date DATE NOT NULL);
	
SELECT * FROM employees;

--Create salaries table

DROP TABLE salaries;

CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL);
	
SELECT * FROM salaries;

--Create titles table

DROP TABLE titles;

CREATE TABLE titles(
	title_id VARCHAR (10) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL);
	
SELECT * FROM titles;