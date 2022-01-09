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

----- UC5 -----
select * from employee_payroll where name = 'Shubham';
select * from employee_payroll 
where startDate between '2021-04-10' and Date(now());

----- UC6 -----
alter table employee_payroll add gender char(1);

update employee_payroll set gender  = 'M' where id;
update employee_payroll set gender = 'F' where id=3;
update employee_payroll set gender = 'F' where id=4;

----- UC7 -----
select sum(salary) from employee_payroll;
select gender, sum(salary) from employee_payroll group by gender;

----- Uc8 -----
alter table employee_payroll 
add phone_number varchar(30),
add department varchar(30) not null;
alter table employee_payroll
add address varchar(250) default 'ABC';
select * from employee_payroll;

----- UC9 -----
alter table employee_payroll 
rename column salary to basic_pay;

alter table employee_payroll 
add deductions int, 
add taxable_pay int,
add income_tax int,
add net_pay int;

select * from employee_payroll; 

----- UC10 ------
insert into employee_payroll
(name, basic_pay, startDate, department)
values ('Terrisa', 500000.0, '2021-01-10', 'Sales');
insert into employee_payroll
(name, basic_pay, startDate, gender, phone_number, department, deductions, taxable_pay, income_tax, net_pay)
values ('Terrisa', 500000.0, '2021-01-10', 'F', '456765', 'Marketing', 30000, 400, 756, 857);
select * from employee_payroll; 

------ UC11 ------
create table employee (
id int not null auto_increment  primary key ,
name varchar(50) not null, 
gender varchar (1),
phone varchar (30),
address varchar(300),
startDate Date not null
);

select * from employee;
-- Here we need to payroll table, while creating payroll table we need to manage one to one relation, so we will create one foreign key in this payroll ---
create table payroll (
id int not null auto_increment  primary key ,
basic_pay int,
deuctions int,
income_tax int,
taxable_pay int, 
net_pay int ,
emp_id int ,
foreign key(emp_id) references employee (id)
);

 create table department (
 id int not null auto_increment primary key,
 dept_name varchar (20) not null
 );
 
 create table employee_department(  
 employee_id int  not null,
 department_id  int not null,
 foreign key(employee_id) references employee (id),
 foreign key (department_id) references department(id),
 primary key(employee_id,department_id)
 );
select * from employee_department;
desc employee_department;


