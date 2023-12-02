CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dempt_name VARCHAR(25)
);
ALTER TABLE departments
RENAME COLUMN dempt_name TO dept_name;

---------------------
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	sex VARCHAR(1),
	hire_date DATE
	
);

ALTER TABLE employees
ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);

SELECT * FROM employees;
--------------------
CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT
);

ALTER TABLE salaries
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);


--------------------
CREATE TABLE titles(
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR
);
--------------------
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(4)
);
ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

ALTER TABLE dept_emp
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);

ALTER TABLE dept_emp
ADD PRIMARY KEY (emp_no, dept_no);

-------------------
CREATE TABLE dept_manager(
	dept_no VARCHAR(4),
	emp_no INT NOT NULL PRIMARY KEY 
);
ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
ALTER TABLE dept_manager
ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);
