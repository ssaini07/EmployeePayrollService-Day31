show databases;
use emp_payroll_service;
desc emp_payroll_service;
DROP TABLE emp_payroll_service;
---- UC1 ----
create database employee_payroll_service;
use employee_payroll_service;

----- UC2 -----
create table employee_payroll (
id int not null auto_increment,
name varchar(50) not null,
salary Double not null,
startDate Date not null,
primary key(id)
);
desc employee_payroll;
