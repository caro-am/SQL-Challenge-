--Depatment Table 
Drop Table department;

Create table Department(
	dept_no VARCHAR not null,
	dept_name VARCHAR not null, 
	Primary Key (dept_no)
); 

--Employees Table 
Drop Table Employee;

Create Table Employee(
	emp_no INT not null, 
	birth_date DATE not null,  
	first_name VARCHAR not null,  
	last_name VARCHAR not null,  
	gender VARCHAR not null, 
	hire_date DATE not null, 
	Primary Key (emp_no)
);

-- Dept_Emp Table 
Drop Table dept_emp; 

Create Table Dept_Emp(
	emp_no INT not null ,
	dept_no VARCHAR not null,
	from_date  DATE not null,
	to_date DATE not null,  
	Foreign key (emp_no) references employee(emp_no),
    Foreign key (dept_no) references department(dept_no)
); 	

--Dept_Managers Table 
Drop Table Dept_Managers; 

Create Table Dept_Managers( 
	dept_no VARCHAR not null,
	emp_no INT not null,
	from_date DATE not null,
	to_date DATE not null,
	Foreign key (emp_no) references employee(emp_no),
    Foreign key (dept_no) references department(dept_no)
); 

--Salaries Table 
drop table salaries; 

Create Table Salaries(
	emp_no INT not null,  
	salary INT not null,
	from_date DATE not null, 
	to_date DATE not null, 
	Foreign key (emp_no) references employee(emp_no)
);

--Titles Table 
drop table titles;  

Create Table Titles(
	emp_no INT not null, 
	title VARCHAR not null, 
	from_date DATE not null, 
	to_date DATE not null, 
	Foreign key (emp_no) references employee(emp_no)
); 	