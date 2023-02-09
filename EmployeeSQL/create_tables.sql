DROP TABLE departments;

CREATE TABLE departments(
	dept_no	VARCHAR(5),
	dept_name VARCHAR(30));
	
SELECT * FROM departments;

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
	emp_no INT,	
	dept_no	VARCHAR(5));
	
SELECT * FROM dept_emp;

DROP TABLE dept_manager;

CREATE TABLE dept_manager(
	dept_no	VARCHAR(5),
	emp_no INT);
	
SELECT * FROM dept_manager;

DROP TABLE employees;

CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR(10),
	birth_date DATE,	
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1), 
	hire_date DATE);
	
SELECT * FROM employees;

DROP TABLE salaries;

CREATE TABLE salaries(
	emp_no INT,
	salary INT);
	
SELECT * FROM salaries;

DROP TABLE titles;

CREATE TABLE titles(
	title_id VARCHAR (10),
	title VARCHAR(30);
	
SELECT * FROM titles;