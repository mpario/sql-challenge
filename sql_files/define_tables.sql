DROP TABLE IF EXISTS employees CASCADE;
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	gender VARCHAR(1),
	hire_date DATE
);

DROP TABLE IF EXISTS departments CASCADE;
CREATE TABLE departments (
	dept_no VARCHAR(25) PRIMARY KEY,
	dept_name VARCHAR
);

DROP TABLE IF EXISTS dept_emp CASCADE;
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS titles;
CREATE TABLE titles ( 
	emp_no INT,
	title VARCHAR(25),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, title, from_date, to_date),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

