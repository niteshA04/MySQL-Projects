-- # Using Database # --
use abc_company;

-- # WHERE OPERATOR # --
-- select * from employees;
-- select * from employees
-- where emp_id  = 103;

-- select * from employees
-- where salary  = 10000;

-- # LOGICAL OPERATOR'S # --
select * from employees
where salary  = 6000 and first_name = 'Harry';

select * from employees
where salary  = 6000 or first_name = 'Harry';

select * from employees
where not salary = 6000;





















