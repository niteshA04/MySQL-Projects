# Using the database
use fruit_sales;

# Multi Column Join
select * from sales_table
inner join product_table
on sales_table.product = product_table.ProductID
inner join seller_table
on sales_table.sellerID = seller_table.sellerID;

# Operations on Multi Column Join
select * from sales_table sa
inner join product_table p
on sa.product = p.ProductID
inner join seller_table se
on sa.sellerID = se.sellerID
where qty_sold > 100;

# Operations on Multi Column Join
select * from sales_table sa
inner join product_table p
on sa.product = p.ProductID
inner join seller_table se
on sa.sellerID = se.sellerID
where seller = "John";