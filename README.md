# sql-challenge


1. Data Modeling

CSVs are inspected and an ERD of the tables are sketched out as the "ERD.png" 

2. Data Engineering

A table schema "schema.sql" for each of the six CSV files is created with specify data types, primary keys, foreign keys, and other constraints.
Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

3. Data anlysis 

A table query "query.sql" for the 6 tables is created with following query functions.
- List the following details of each employee: employee number, last name, first name, sex, and salary.
- List first name, last name, and hire date for employees who were hired in 1986.
- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
- List the department of each employee with the following information: employee number, last name, first name, and department name.
- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
- List all employees in the Sales department, including their employee number, last name, first name, and department name.
- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

4. Bonus

The SQL database is imported into Pandas using sqlalchemy in "bonus.ipynb". Then, a histogram to visualize the most common salary ranges for employees and a bar chart of average salary by title are created.
