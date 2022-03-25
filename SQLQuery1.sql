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
--check ctable created succesfully
select * from  employee_payroll

--UC3-Insert Data
insert into employee_payroll values
('Shashi',100000.0,'2020-01-03'),
('Madhu',200000.0,'2021-06-15'),
('Vinayak',300000.0,'2022-02-21')

--UC4-Retrieve and fetch all data 
select * from employee_payroll


