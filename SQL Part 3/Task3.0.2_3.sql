select count(*)
from (select * from alteredtesttasktable where "product id"='tenwords_1w_9.99_offer') as new_table
where trial=true and refunded=false and check_trial_second("user id", "purchase date", transaction_number);
