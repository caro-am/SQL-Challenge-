--List the following details of each employee: employee number, last name, first name, sex, and salary. 
Select employee.emp_no, 
employee.last_name, 
employee.first_name, 
employee.gender, 
salaries.salary
From employee 
Left Join salaries on 
employee.emp_no = salaries.emp_no 
order by emp_no 
;
 
 --List first name, last name, and hire date for employees who were hired in 1986.
Select * from Employee 
Where date_part('year',hire_date) = 1986 
Order by emp_no
; 

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
Select dept_managers.dept_no, 
department.dept_name, 
dept_managers.emp_no, 
employee.last_name, 
employee.first_name
From dept_managers 
Left Join department on 
dept_managers.dept_no = department.dept_no 
Left Join employee on
dept_managers.emp_no = employee.emp_no 
Order by emp_no
; 

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
Select employee.emp_no, 
employee.last_name, 
employee.first_name, 
dept_emp.dept_no, 
department.dept_name
From employee 
Left Join dept_emp on 
employee.emp_no = dept_emp.emp_no 
Left Join department on
dept_emp.dept_no = department.dept_no 
Order by emp_no 
;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." 
Select * from Employee 
Where first_name = 'Hercules' and 
last_name like 'B%'
;

--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
Select employee.emp_no, 
employee.last_name, 
employee.first_name, 
dept_emp.dept_no,
department.dept_name
From Employee 
Left Join dept_emp on 
employee.emp_no = dept_emp.emp_no 
Inner Join department on 
department.dept_no = dept_emp.dept_no 
Where department.dept_name = 'Sales'
Order by emp_no
;

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
Select employee.emp_no, 
employee.last_name, 
employee.first_name, 
dept_emp.dept_no,
department.dept_name
From Employee 
Left Join dept_emp on 
employee.emp_no = dept_emp.emp_no 
Full Join department on 
department.dept_no = dept_emp.dept_no 
Where department.dept_name in ('Sales', 'Development')
Order by emp_no
;

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
Select last_name, 
Count (*) as freq_count
From employee
Group by last_name
Order by freq_count Desc
; 