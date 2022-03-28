--UC1-Create Database
create database payroll_service;
use payroll_service;

--UC2-Create Table
create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(100) not null,
salary money not null,
start date not null,
);
--check table created succesfully
select * from  employee_payroll;

--UC3-Insert Data
insert into employee_payroll values
('Shashi',100000.0,'2020-01-03'),
('Madhu',200000.0,'2021-06-15'),
('Vinayak',300000.0,'2022-02-21')

--UC4-Retrieve and fetch all data 
select * from employee_payroll;

--UC5-Find Range or salary of employee
select salary from  employee_payroll where name = 'Shashi'
select * from employee_payroll
where start between cast('2020-01-03' As datetime) and GETDATE();

--UC6-Add Gender column and update
ALTER TABLE employee_payroll
ADD gender char(2)

update employee_payroll set gender = 'M' where name ='Shashi' or name = 'Madhu';
update employee_payroll set gender = 'M' where name ='Vinayak';

--UC7- Calculate Aggregate Functions
select sum(salary) from employee_payroll where gender='M' group by Gender;
select sum(salary) from employee_payroll  group by Gender;
select sum(salary) as 'totalSalary',gender from employee_payroll group by Gender;
select avg(salary) as 'averageSalary',gender from employee_payroll group by Gender;
select min(salary) as 'minimumSalary',gender from employee_payroll group by Gender;
select max(salary) as 'maximumSalary',gender from employee_payroll group by Gender;
select count(Gender) as 'male' from employee_payroll where gender='M' 
select count(Gender) as 'male' from employee_payroll where gender='M'

--UC8-Extend Employee Data
select * from employee_payroll
alter table employee_payroll add
phone varchar(13),
department varchar(100) not null default 'Mca',
address varchar(250) not null default 'Banglore'

--UC9-Extend Employee Data and Salary into basic pay
select * from employee_payroll
sp_rename 'employee_payroll.salary' , 'basic_pay'
alter table employee_payroll add
deduction real ,
taxable_pay money,
income_tax money,
net_pay float;

--UC10-Madhu Sales and Marketing Department
insert into employee_payroll values
('Madhu',700000.0,'2020-08-14','M','8734586245','sales','india',100.0,12000.0,2000.0,1233.0)

update employee_payroll set taxable_pay=12000.00, department='marketing',income_tax=2000.00, net_pay=1233 where id=2;
select * from employee_payroll where name='Madhu'







