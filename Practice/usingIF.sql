use abc_company;

select emp_id, first_name,
if (salary>2000 and salary<5000, 'Bonus','No Bonus') as Eligiblity
from employees;

select emp_id, first_name,
if (salary>=2000 and salary<=5000, 'Bonus','No Bonus') as Eligiblity
from employees;

select emp_id, first_name,
if (salary>=2000 and salary<=5000, 'Bonus','No Bonus') as Eligiblity
from employees;