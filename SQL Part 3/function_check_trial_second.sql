CREATE OR REPLACE FUNCTION public.check_trial_second(
	userid integer,
	purchasedate date,
	transactionnumber bigint)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare
	passed integer;
begin
	select count(*) into passed
	from (select * from alteredtesttasktable where "product id"='tenwords_1w_9.99_offer' and "user id"=userid) as new_table
	where trial=false and "purchase date"=purchasedate + (14 * interval '1 day') and transaction_number>=transactionnumber+2;
	
	return passed>0;
end;
$BODY$;