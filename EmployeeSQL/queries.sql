select * from employees order by emp_no limit 20;
select * from titles limit 20;
select * from salaries limit 20;
select * from departments limit 20;
select * from dept_emp limit 20;
select * from dept_manager limit 20;

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name,e.sex, s.salary
from employees e
join salaries s
on (e.emp_no = s.emp_no)
order by emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select last_name, first_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date, last_name;


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments d
join dept_manager dm
on dm.dept_no = d.dept_no
join employees e
on dm.emp_no = e.emp_no
order by d.dept_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on de.emp_no = e.emp_no
join departments d
on de.dept_no = d.dept_no
order by emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' 
and last_name like 'B%'
order by last_name;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on de.emp_no = e.emp_no
join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
order by emp_no;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on de.emp_no = e.emp_no
join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development'
order by d.dept_name, emp_no;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*) as "last name count"
from employees
group by last_name
order by "last name count" desc;

