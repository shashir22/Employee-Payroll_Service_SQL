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





