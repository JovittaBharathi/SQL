create database Employee;
use Employee;

-- CREATE --
create table Departments(
department_id int,
department_name varchar(100)
);
select * from Departments;

create table Location(
location_id int,
location varchar(30)
);
select * from Location;

create table Employees(
employee_id int,
employee_name varchar (50),
gender enum ('M','F'),
age int,
hire_date date,
designation varchar (100),
department_id int,
location_id int,
salary decimal (10,2)
);
select * from Employees;

-- ALTER --
alter table Employees
add column email varchar (50);
alter table Employees
modify column designation varchar (200);
alter table Employees
drop column age;
alter table Employees
rename column hire_date to date_of_joining;

-- RENAME --
rename table Departments to Departments_Info;
rename table Location to Locations;

-- TRUNCATE --
truncate table Employees;

-- DROP --
drop table Employees;
drop database Employee;

-- CONSTRAINTS --
create database Employee;
use Employee;

create table Departments(
department_id int primary key,
department_name varchar(100) unique not null
);
select * from Departments;

create table Location(
location_id int auto_increment primary key,
location varchar(30)
); 
alter table Location
modify column location varchar(30) unique not null;
select * from Location;

create table Employees(
employee_id int primary key,
employee_name varchar (50) not null,
gender enum ('M','F'),
age int ,
hire_date date,
designation varchar (100),
department_id int,
location_id int,
salary decimal (10,2),
foreign key (department_id) references Departments (department_id),
foreign key (location_id) references Location (location_id)
);
alter table Employees
add constraint check (age >= 18);
alter table Employees
alter column hire_date set default (current_date);
alter table Employees
modify column gender char (1) check (gender in ('M','F'));
select * from Employees;

               











