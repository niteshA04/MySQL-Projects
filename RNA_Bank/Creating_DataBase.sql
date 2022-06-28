-- # CREATING DATABASE # --
-- create database RNA_Bank_DB;

-- # Using RNA_Bank_DB Daabase
use RNA_Bank_DB;

-- # Customer Personal Info
create table customer_personal_info
(
	customer_id varchar(10),
    customer_name varchar (20),
    date_of_birth date,
    gurdian_name varchar(30),
    address varchar(100),
    contact_no bigint(10),
    mail_id varchar(30),
    gender char(1),
    martial_status varchar(10),
    identification_doc_type varchar(20),
    id_doc_no varchar(20),
    citizenship varchar(20),
    constraint cust_pers_info_pk primary key(customer_id)
);