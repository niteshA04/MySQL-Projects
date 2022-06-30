# Using Database 
use fruit_sales;

# Adding Primary key in product table
alter table product_table
add primary key (ProductID);

# Adding Primary key in Seller Table
alter table seller_table
add primary key (sellerID);

# Adding Foreign Key in Sales Table
alter table sales_table
add foreign key (product)
references product_table (ProductID);

alter table sales_table
add foreign key (sellerID)
references seller_table (sellerID);

# Checking Table Describption
describe product_table;
describe sales_table;
describe seller_table;