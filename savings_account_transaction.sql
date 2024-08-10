select * from savings_account_transaction;



select transaction_id,transaction_type,dr,cr,transfer_deposit,transfer_deduction,withdrawals,interest,balance,atm_location,transaction_time,deposits
from savings_account_transaction
where account_no=127739717449;


select transaction_id,transaction_type,dr,cr,transfer_deposit,transfer_deduction,withdrawals,interest,balance,atm_location,transaction_time,deposits
from savings_account_transaction
where user_id='williamholland';