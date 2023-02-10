Background

I designed  tables to hold the data from six .csv files, imported the .csv files into a SQL database, and answered questions about the data. Basically, I practiced data modeling, data engineering, and data analysis.

Data Modeling

I inspected the .csv files, and created an Entity Relationship Diagram of the tables using QuickDatabaseDiagrams.
https://app.quickdatabasediagrams.com/#/d/DxfQ6D

Data Engineering

I created a table schema for each of the six provided .csv files, including the following:

    - I specified the data types, primary keys, foreign keys, and other constraints.    
    
    - For the primary keys, I verified that the column is unique or created an serial id to serve as the primary key.     
    
    - I carefully created the tables in the correct order to handle the foreign keys.    
    
    - I imported each .csv file into its corresponding SQL table.    
    

Data Analysis / Questions

I performed the data analysis to answer the eight scenarios below:

    1. List the employee number, last name, first name, sex, and salary of each employee.

    2. List the first name, last name, and hire date for the employees who were hired in 1986.

    3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

    4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

    5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

    6. List each employee in the Sales department, including their employee number, last name, and first name.

    7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

    8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
