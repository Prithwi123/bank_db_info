--select all data
select * from branch_details;


--fetch all data using ifsc_code
select bank_code,branch_name,address,district,state,pin_code,bank_contact,branch_email,date_of_issue
from branch_details
where ifsc_code='SBIN0000063';



--bank_code with brach_name and bank_contact using ifsc_code
select bank_code,branch_name,bank_contact
from branch_details
where ifsc_code='SBIN0007821';


--ifsc_code,bank_code,branch_name,bank_contact,branch_email using address
select ifsc_code,bank_code,branch_name,bank_contact,branch_email
from branch_details
where address='NEW YORK';