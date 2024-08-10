--all employee data
select * from crmuser_employees;


--find retired employees details
select * 
from crmuser_employees
where is_retired='yes';



select emp_id,user_id,ifsc_code
from crmuser_employees
where is_retired='yes';


select emp_id,employee_name,manager_name
from crmuser_employees
where is_retired='no';


select employee_name,email,ph_no,is_admin
from crmuser_employees
where emp_id='EMP001';