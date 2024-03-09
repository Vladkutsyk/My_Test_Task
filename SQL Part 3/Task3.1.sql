select *, row_number() over (partition by "user id" order by "purchase date") as transaction_number
into alteredtesttasktable
from (select distinct * from testtasktable) as new_table;
