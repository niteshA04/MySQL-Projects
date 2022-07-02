-- # CREATING DATABASE # --
-- create database RNA_Bank_DB;

-- # Using RNA_Bank_DB Daabase
use RNA_Bank_DB;
show tables;

-- # Customer Personal Info
create table customer_personal_info
(
	customer_ID varchar(10) not null,
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
    constraint cust_pers_info_pk primary key(customer_ID)
);

create table customer_reference_info
(
	customer_ID varchar(10) not null,
    reference_acc_name varchar(30),
    reference_acc_no bigint(16),
    reference_acc_address varchar(30),
    relation varchar(30),
    constraint cust_ref_info_pk primary key(customer_ID),
    #constraint cust_ref_info_pk primary key(customer_ID)
);

create table bank_info
(
	ifsc_code varchar(15),
    bank_name varchar(30),
    branch_name bigint(16),
    constraint bank_info_pk primary key(ifsc_code)
);

create table account_info(
	account_no bigint(16),
    customer_ID varchar(5),
    account_type varchar(10),
    registration_date date,
    activation_date date,
    ifsc_code varchar(10),
    intrest decimal(7,2),
    initial_deposit bigint(10),
	constraint account_info_pk primary key(account_no),
	constraint acs_info_pers_fk foreign key(account_no),
	constraint account_info_pk primary key(account_no)
);



















