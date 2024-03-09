select *
from alteredtesttasktable
where "user id" in (select "user id" from alteredtesttasktable where "product id"='tenwords_1w_9.99_offer' and trial=true) and "product id"='tenwords_1w_9.99_offer';
