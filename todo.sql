use entri_d42;

CREATE TABLE new_employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10, 2),
    age INT,
    join_date DATE
);

INSERT INTO new_employees (id, name, department, salary, age, join_date) VALUES
(1, 'Alice', 'HR', 55000, 28, '2021-03-15'),
(2, 'Bob', 'Finance', 75000, 34, '2020-07-01'),
(3, 'Charlie', 'IT', 68000, 30, '2019-12-01'),
(4, 'David', 'IT', 62000, 25, '2021-06-10'),
(5, 'Eva', 'Finance', 59000, 40, '2021-01-20'),
(6, 'Frank', 'Marketing', 48000, 29, '2022-08-01'),
(7, 'Grace', 'HR', 50000, 31, '2021-05-15'),
(8, 'Henry', 'IT', 72000, 27, '2020-10-01'),
(9, 'Ivy', 'Finance', 63000, 35, '2019-04-01'),
(10, 'Jack', 'Marketing', 47000, 26, '2021-11-10');

select distinct department from new_employees;

select name as Employee_Name , salary as Monthly_Salary from new_employees;

select name , (salary + (salary*(10/100))) as increment_salary from new_employees; 

select * from new_employees where salary>60000;

select *from new_employees where department in ("IT","Finance") and salary >65000;

select * from new_employees where age is not null;

select * from new_employees where department in ("HR","Marketing");

select * from new_employees where salary between 50000 and 70000;

select * from new_employees where age not between 30 and 35;

select * from new_employees where department not in ("Finance");


