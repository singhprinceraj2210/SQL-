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

select * from Employee;
-- salary in desc
select name,salary 
from Employee
order by salary desc;

-- top 3 heighest salary 

select name ,department,salary 
from Employee 
order by salary desc
limit 3;

-- Find the 2 highest-paid Analytics employees.
select name ,salary 
from Employee
where department="Analytics"
order by salary desc
limit 2
offset 2;
-- Find the lowest-paid employee in Engineering.
select name 
from Employee
where department="Engineering"
order by salary asc
limit 1; 

-- Find the second-highest salary from the Employee table.
select salary 
from Employee
order by salary desc
limit 1 offset 1;

-- Find the second-highest DISTINCT salary.
select distinct(salary) 
from Employee
order by salary desc
limit 1 offset 1;

-- Find the third-highest DISTINCT salary.

select distinct(salary)
from Employee
order by salary desc
limit 1 offset 2;
