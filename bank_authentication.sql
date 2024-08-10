--query to fetch all data from bank_authentication table
select * from bank_authentication;


--fetch nesessary authentication detail of a speccific user which is not lock
select user_id,email_add,ph_no,password,role
from bank_authentication
where user_id='aanderson' and is_lock='No';


--fetch paasword of a specific user
select password 
from bank_authentication
where user_id='aanderson';


select user_id,password
from bank_authentication
where email_add='aanderson@example.org' and ph_no=9134358124;


select email_add,ph_no
from bank_authentication
where user_id='aanderson' and password='aaltAZlIutjns93EZ9VpmA==';