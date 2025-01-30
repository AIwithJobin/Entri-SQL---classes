use entri_d42;

CREATE TABLE Employees ( 
Employee_ID INT primary key, 
First_Name VARCHAR(50),
Department VARCHAR(50),
 Date_of_Joining DATE, 
 Salary DECIMAL(10,2));
 
 INSERT INTO Employees (Employee_ID, First_Name, Department, Date_of_Joining,Salary)
VALUES 
(1, 'John', 'HR', '2020-01-15', 50000.50),
(2, 'Surah', 'Finance', '2018-04-22', 60000.00), 
(3,'David', 'IT', '2021-06-01', 70000.75), 
(4, 'Alice', 'Marketing','2019-09-30', 45000.30),
(5, 'James', 'Operations', '2020-11-12', 55000.10),
(6, 'Emily', 'HR', '2017-07-20', 52000.40),
(7, 'Robert', 'IT', '2022-02-10', 80000.60), 
(8, 'Olivia', 'Finance', '2019-03-15', 63000.80),
(9, 'Michael', 'Operations', '2020-12-01', 58000.00),
(10, 'Sophia', 'Marketing', '2018-08-14', 47000.90);

select * from employees;

update employees set Salary = 100000.00 where Employee_ID = 3;

alter table  employees add column Employee_Status varchar(50);
update employees set Employee_Status = "Active";
set sql_safe_updates=0;
delete from employees where Employee_ID=4;
truncate employees;
drop table  employees;


	
