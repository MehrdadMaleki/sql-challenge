drop table if exists departments cascade;
drop table if exists dept_emp cascade;
drop table if exists dept_manager cascade;
drop table if exists employees cascade;
drop table if exists salaries cascade;
drop table if exists titles cascade;


create table titles (
	title_id varchar(10) PRIMARY KEY not null,
	title varchar(30) not null
);


create table departments (
	dept_no varchar(10) PRIMARY KEY not null,
	dept_name varchar(100) not null
);



create table employees (
	emp_no int primary key not null,
	emp_title_id varchar(10) not null,
	foreign key (emp_title_id) references titles(title_id),	
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(10) not null,
	hire_date date not null
);



create table dept_emp (
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar(10) not null,
	foreign key (dept_no) references departments(dept_no)
);


create table dept_manager (
	dept_no varchar(10) not null,
	foreign key (dept_no) references departments(dept_no),
	emp_no int PRIMARY KEY not null,
	foreign key (emp_no) references employees(emp_no)
);

select * from dept_manager

create table salaries (
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	salary int not null
);

