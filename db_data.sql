create table bank_authentication(
    user_id varchar2(20) not null primary key,
    email_add varchar2(100) not null unique,
    ph_no varchar2(15) not null,
    password varchar2(100) not null,
    role varchar2(10) not null,
    is_lock varchar2(3) not null,
    created_at date,
    last_update date
);

alter table bank_authentication modify created_at date;

create table branch_details(
    ifsc_code varchar2(12) not null primary key,
    bank_code varchar2(10) not null,
    branch_name varchar2(30) not null,
    address varchar2(100) not null,
    district varchar2(30) not null,
    state varchar2(30) not null,
    pin_code varchar2(10) not null,
    bank_contact varchar2(20) not null,
    branch_email varchar2(50) not null,
    date_of_issue date
);

alter table branch_details modify date_of_issue date;

create table crmuser_employees(
    emp_id varchar2(30) not null primary key,
    user_id varchar2(15) references bank_authentication(user_id) on delete cascade not null unique,
    ifsc_code varchar2(12) references branch_details(ifsc_code) on delete set null not null,
    user_name varchar2(100) not null,
    email varchar2(60) not null,
    ph_no varchar2(20) not null,
    is_admin varchar2(3) not null,
    manager_name varchar2(100) not null,
    job_role varchar2(50) not null,
    is_retired varchar2(3) not  null,
    created_at date,
    last_update_on date
);

alter table crmuser_employees modify last_update_on date;

create table crmuser_accounts(
    cif_id varchar2(50) not null primary key,
    user_id varchar2(50) references bank_authentication(user_id) on delete cascade not null unique,
    ifsc_code varchar2(50) references branch_details(ifsc_code) on delete set null not null,
    aadhar_no varchar2(20) not null unique,
    pan_id varchar2(20) not null unique,
    passport varchar2(20) unique,
    email varchar2(60) not null,
    customer_name varchar2(100) not null,
    customer_first_name varchar2(50) not null,
    customer_last_name varchar2(50) not null,
    mothers_name varchar2(100),
    guardian_name varchar2(100),
    ph_no varchar2(20) not null,
    addr_1 varchar2(500) not null,
    addr_2 varchar2(500) not null,
    district varchar2(50),
    state varchar2(50),
    pin_code varchar2(30),
    is_savings varchar2(1) not null,
    customer_dob varchar2(50) not null,
    gender varchar2(10) not null,
    birth_month varchar2(15),
    birth_year varchar2(10),
    birth_day varchar2(10),
    date_of_death varchar2(50),
    customer_type varchar2(15) not null,
    is_joint varchar2(1) not null,
    joint_id varchar2(20),
    education varchar2(50),
    occupation varchar2(50),
    primary_language varchar2(20),
    alternate_mobile varchar2(20),
    country_of_birth varchar2(20),
    created_at date,
    last_updated_on date
);



create table bank_savings_account(
    sm_id varchar2(10) not null primary key,
    user_id varchar2(50) references bank_authentication(user_id) on delete cascade not null unique,
    cif_id varchar2(50) references crmuser_accounts(cif_id) on delete cascade not null unique,
    ifsc_code varchar2(50) references branch_details(ifsc_code) on delete set null not null ,
    account_no varchar2(20) not null,
    pan_id varchar2(20) not null unique,
    emaail varchar2(60) not null,
    acount_name varchar2(100) not null,
    guardian_name varchar2(100),
    ph_no varchar2(20) not null,
    address varchar2(500) not null,
    district varchar2(50),
    state varchar2(50),
    pin_code varchar2(30),
    date_of_issue varchar2(50),
    is_joint varchar2(1) not null,
    joint_id varchar2(20),
    is_namoinee varchar(3) not null,
    nominee_id varchar2(10),
    nominee_name varchar2(50),
    nominee_phone varchar2(20),
    nominee_address varchar2(200),
    current_balance numeric(15,2),
    interest_rate numeric(3,2),
    is_freeze varchar2(1),
    freeze_reason varchar2(20),
    last_transaction_date date,
    last_update_on date
);
alter table bank_savings_account add currency varchar2(10) not null;
alter table savings_account_transaction add currency varchar2(10) not null;
create table savings_account_transaction(
    transaction_id varchar2(12) not null primary key,
    user_id varchar2(50) references bank_authentication(user_id) on delete cascade not null,
    cif_id varchar2(50) references crmuser_accounts(cif_id) on delete cascade not null,
    ifsc_code varchar2(50) references branch_details(ifsc_code) on delete set null not null,
    sm_id varchar2(50) references bank_savings_account(sm_id) on delete set null not null,
    account_no varchar2(20) not null,
    transaction_type varchar2(10) not null,
    dr varchar2(15),
    cr varchar2(15),
    transfer_deposit varchar2(15),
    transfer_deduction varchar2(15),
    withdrawals varchar2(15),
    interest varchar2(15),
    balance decimal(10,2) not null,
    atm_location varchar2(500),
    transaction_time varchar2(50),
    deposits varchar2(15)
);

desc bank_authentication;
desc branch_details;
desc crmuser_employee;
desc crmuser_accounts;
desc bank_savings_account;
desc savings_account_transaction;

commit;



-- QUERY TO FIND PRIMARY KEY IN A TABLE
SELECT cols.table_name, cols.column_name, cols.position, cons.status, cons.owner
FROM all_constraints cons, all_cons_columns cols
WHERE cols.table_name = 'SAVINGS_ACCOUNT_TRANSACTION'
AND cons.constraint_type = 'P'
AND cons.constraint_name = cols.constraint_name
AND cons.owner = cols.owner
ORDER BY cols.table_name, cols.position;


--QUERY TO FIND FOREIGN KEY IN TABLE
SELECT cols.table_name, cols.column_name, cols.position, cons.status, cons.owner
FROM all_constraints cons, all_cons_columns cols
WHERE cols.table_name = 'SAVINGS_ACCOUNT_TRANSACTION'
AND cons.constraint_type = 'R'
AND cons.constraint_name = cols.constraint_name
AND cons.owner = cols.owner
ORDER BY cols.table_name, cols.position;



select * from bank_authentication;
delete from bank_authentication where ph_no='9134358124';
select current_timestamp from dual;
select count(*) from bank_authentication;
select * from branch_details;
select * from crmuser_employees;
select * from crmuser_accounts;
select * from bank_savings_account;
select * from savings_account_transaction;
