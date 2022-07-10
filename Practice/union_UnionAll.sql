use same_tables;

# Returns only Distinct Values
select FirstName, City from emp_a_class
union
select FirstName, City from emp_b_class;

# Returns duplicate Values also
select FirstName, City from emp_a_class
union all
select FirstName, City from emp_b_class;