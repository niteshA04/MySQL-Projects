# Using Databse
use fruit_sales;

# Performing Inner Join
Select * from sales_table as s
inner join product_table as p
on s.Product = p.ProductID;

# Performing Inner Join for specific columns
Select s.mnth, s.product, s.sellerID, s.qty_sold, p.Product, p.sellingPrice
from sales_table as s
inner join product_table as p
on s.Product = p.ProductID;

