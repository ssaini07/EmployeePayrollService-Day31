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

----- UC3 -----
insert into employee_payroll (name, salary, startDate)
values ('Shubham', 900000.0, '2021-04-10');
insert into employee_payroll (name, salary, startDate)
values ('Durgesh', 700000.0, '2021-09-10');
insert into employee_payroll (name, salary, startDate)
values ('Rohini', 800000.0, '2021-02-10');
insert into employee_payroll (name, salary, startDate)
values ('Julekha', 600000.0, '2021-05-10');

----- UC4 -----
select * from employee_payroll;