DROP TABLE departments;

CREATE TABLE departments(
	dept_no	VARCHAR,
	dept_name VARCHAR);
	
SELECT * FROM departments;

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
	emp_no INT,	
	dept_no	VARCHAR);
	
SELECT * FROM dept_emp;

DROP TABLE dept_manager;

CREATE TABLE dept_manager(
	dept_no	VARCHAR,
	emp_no INT);
	
SELECT * FROM dept_manager;

DROP TABLE employees;

CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,	
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR, 
	hire_date DATE);
	
SELECT * FROM employees;

DROP TABLE salaries;

CREATE TABLE salaries(
	emp_no INT,
	salary INT);
	
SELECT * FROM salaries;

DROP TABLE titles;

CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR);
	
SELECT * FROM titles;