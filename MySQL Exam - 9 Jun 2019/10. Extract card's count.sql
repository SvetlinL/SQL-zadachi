delimiter $$
create function udf_client_cards_count(`name` VARCHAR(30))
returns int
deterministic
begin 
return (
	select count(ca.id) from clients as cl
    join bank_accounts as ba on cl.id = ba.client_id
    join cards as ca on ba.id = ca.bank_account_id
    where cl.full_name = `name`
    group by cl.id
);
end
$$