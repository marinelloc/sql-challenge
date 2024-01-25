CREATE TABLE departments (
  dept_no VARCHAR(5)PRIMARY KEY,
  dept_name VARCHAR(30)
);

select * from departments;

CREATE TABLE titles (
  title_id VARCHAR(10) PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);

select * from titles;


CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(30) NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date DATE NOT NULL
);

select * from employees;

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

select * from dept_emp;

CREATE TABLE dept_manager (
   dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (dept_no, emp_no)
);

select * from dept_manager;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL
);

select * from salaries;
