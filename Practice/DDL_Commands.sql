-- *** # DDL COMMNDS # *** --

# Creating a database ABC Company
create database ABC_Company;

# Using ABC Company database
use ABC_Company;

# Creating a table in ABC Company
create table employees(
emp_id int not null,
first_name varchar(20),
salary int,
primary key(emp_id)
);

select * from employees
describe employees;

# Adding new column in the employees table
alter table employees add column contact int;
describe employees;
select * from employees;

# Renaming Contact table with job_title
alter table employees rename column job_title to job_code;
describe employees;

# Deleting table content using trunket
trunket table employees;
describe employees;

# Deleting Employees table using drop
drop table employees;
describe employees 
select * from employees;





























