--fetch all data
select * from crmuser_accounts;


select aadhar_no,pan_id,passport,email,customer_name,customer_first_name,customer_last_name,mothers_name,guardian_name,ph_no,gender,birth_month,birth_year,birth_day,education,occupation,primary_language,alternate_mobile,country_of_birth
from crmuser_accounts
where cif_id=1006300264;


select user_id,ifsc_code,aadhar_no,pan_id,passport,email,customer_name,ph_no,is_savings,customer_type,is_joint,joint_id,alternate_mobile
from crmuser_accounts
where cif_id=1006300264;


select customer_name,addr_1,addr_2,district,state,pin_code,country_of_birth
from crmuser_accounts
where cif_id=1006300264;


select aadhar_no,pan_id,passport,email,customer_name,customer_first_name,customer_last_name,mothers_name,guardian_name,ph_no,gender,birth_month,birth_year,birth_day,education,occupation,primary_language,alternate_mobile,country_of_birth,addr_1,addr_2,district,state,pin_code,country_of_birth
from crmuser_accounts
where ifsc_code='SBIN0000063';


select ifsc_code,aadhar_no,pan_id,passport,email,customer_name,mothers_name,guardian_name,ca.ph_no,addr_1,addr_2,
district,state,pin_code,is_savings,customer_dob,gender,customer_type,is_joint,joint_id,education,occupation,primary_language,
alternate_mobile,password,role,is_lock
from crmuser_accounts ca,bank_authentication ba
where ca.user_id=ba.user_id 
and ba.user_id='aanderson';


