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

