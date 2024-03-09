select "user id" 
from alteredtesttasktable
where transaction_number=2 and refunded=true and ("user id" in (select "user id" from alteredtesttasktable where transaction_number=1 and refunded=False));
