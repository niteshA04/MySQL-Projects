# Using Database
use fruit_sales;

# Using Group By
select * from sales_table
where qty_sold > 100
group by sellerID;

# Using Group By joining columns
select * from sales_table s
inner join product_table p
on s.product = p.ProductID
where s.qty_sold > 100 and p.Product = "Apple"
group by sellerID; 