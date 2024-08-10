select * from bank_savings_account;


select * 
from bank_savings_account
where sm_id='SM12416';


select sm_id,bsa.user_id,ca.cif_id, bsa.ifsc_code,account_no,ca.pan_id,ca.email,acount_name,bsa.ph_no,aadhar_no,passport,customer_name,ca.customer_dob,gender,
education,occupation,primary_language,alternate_mobile,bank_code,branch_name,manager_name
from bank_savings_account bsa,crmuser_accounts ca,branch_details bd,crmuser_employees ce
where bsa.ifsc_code=bd.ifsc_code and bd.ifsc_code=ca.ifsc_code and ca.cif_id=bsa.cif_id and sm_id='SM12416';