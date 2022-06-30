# Using the database # --
use abc_company;

# Regular Expression # --
select * from employees
where last_name regexp 'j';

select * from employees
where last_name regexp '^p';

select * from employees
where last_name regexp 'on$';

select * from employees
where first_name regexp '[os]';

select * from employees
where first_name regexp 'Joe|Steven|Harry';

select * from employees
where last_name regexp '[a-h]e';

select * from employees
where first_name regexp 'J|Sen|rry';

select * from employees
where first_name regexp '^[li]';
