# Using Database
use fruit_sales;

# Using Having
select * from sales_table
where qty_sold > 100
having sellerID = 3;

select * from sales_table
where qty_sold > 100
having sellerID = 1;
