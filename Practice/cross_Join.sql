# Using The Database
use fruit_sales;

# Creating Cross Joins
select * from product_table
cross join sales_table;

# Creating Cross Joins using specific column names
select p.Product, s.qty_sold from product_table p
cross join sales_table s;

# Creating Cross Joins without using cross join
select p.Product, s.qty_sold from product_table p, sales_table s;