# Creating Database # --
create database fruit_sales;

# Using the database # --
use fruit_sales;

# Adding tables # -- 
create table product_table(
ProductID int,
Product varchar(10),
sellingPrice int
);

create table seller_table(
sellerID int,
seller varchar(10)
);

create table sales_table(
mnth varchar(10),
product int,
sellerID int,
qty_sold int
);

# Adding into Product Table # --
insert into product_table values (1, 'Apple', 50);
insert into product_table values (2, 'Mango', 44);
insert into product_table values (3, 'Grapes', 32);
select * from product_table;

# Adding into Seller Table # --
insert into seller_table values (1, 'John');
insert into seller_table values (2, 'Smith');
insert into seller_table values (3, 'Ram');
select * from seller_table;

# Adding into product table # --
insert into sales_table values ('Apr-21', 1, 1, 128);
insert into sales_table values ('Apr-21', 1, 2, 90);
insert into sales_table values ('Apr-21', 2, 2, 196);
insert into sales_table values ('Mar-21', 3, 1, 186);
insert into sales_table values ('Apr-21', 3, 3, 57);
insert into sales_table values ('Feb-21', 2, 1, 168);
insert into sales_table values ('Mar-21', 1, 1, 119);
insert into sales_table values ('Mar-21', 2, 1, 72);
insert into sales_table values ('Mar-21', 3, 3, 160);
insert into sales_table values ('Feb-21', 3, 3, 100);
insert into sales_table values ('Feb-21', 3, 1, 56);
insert into sales_table values ('Feb-21', 2, 3, 113);
select * from sales_table;

describe sales_table;

# Query 1
SELECT SellerID, Product, MAX(QtySold) FROM Sales_Table WHERE Product=3 AND Month='Mar-21';

# Query 2
SELECT Month, Product, MAX(QtySold) FROM Sales_Table WHERE Product=1;

# Query 3
SELECT SellerID, SUM(qty_sold) FROM Sales_Table GROUP BY SellerID;







































































