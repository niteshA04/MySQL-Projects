use fruit_sales;
select sellerID from sales_table
where seller_table  = (SELECT  FROM product_table);

select seller from seller_table where seller = "John"