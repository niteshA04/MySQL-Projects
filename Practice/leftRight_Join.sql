# Using database
use fruit_sales;

# using left join for all columns
select s.mnth, s.sellerID, s.qty_sold, p.Product, p.sellingPrice from sales_table s
left join product_table p
on s.product = p.ProductID;

# Using Left Join for specific column names
select s.mnth, s.sellerID, s.qty_sold, p.Product, p.sellingPrice from sales_table s
left join product_table p
on s.product = p.ProductID;

# Using Left Join wirh where clause
select s.mnth, s.sellerID, s.qty_sold, p.Product, p.sellingPrice from sales_table s
left join product_table p
on s.product = p.ProductID
where s.qty_sold > 100 and p.Product='Apple';

# Using Right Join
select s.mnth, s.sellerID, s.qty_sold, p.Product, p.sellingPrice from sales_table s
right join product_table p
on s.product = p.ProductID;

# Using Left Join wirh where clause
select s.mnth, s.sellerID, s.qty_sold, p.Product, p.sellingPrice from sales_table s
right join product_table p
on s.product = p.ProductID
where s.qty_sold > 100 and p.Product='Apple';