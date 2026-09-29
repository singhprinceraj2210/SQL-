-- to create table 
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);
INSERT INTO Employee (emp_id, name, department, salary, city) VALUES
(101, 'Aman', 'Engineering', 120000, 'Bangalore'),
(102, 'Priya', 'Analytics', 90000, 'Hyderabad'),
(103, 'Rahul', 'Engineering', 150000, 'Bangalore'),
(104, 'Neha', 'HR', 70000, 'Delhi'),
(105, 'Karan', 'Analytics', 110000, 'Bangalore'),
(106, 'Sneha', 'Engineering', 95000, 'Delhi'),
(107, 'Arjun', 'Analytics', 130000, 'Mumbai');

-- Display the names and cities of all employees working in the Analytics department.
select  names,cities
from Employees where dept="analytics";

-- Find the names and salaries of employees earning more than 100000
select name,salaries 
from Employees where salary > 100000;

-- Find employees who Work in Engineering,Have a salary greater than or equal to 100000,Live in Bangalore
select name from Employees
where dept ="Engineering" and salary >= 100000 and city="bangalore";

-- Find the names, departments, and salaries of employees who either: Work in Analytics and earn more than 100000, OR,Work in Engineering and earn more than 120000.
select name ,department,salaries from Employees where (department="analytics" and salary >=100000) or (department="engineering" and salary>=120000);