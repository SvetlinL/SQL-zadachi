insert into `cards`(card_number, card_status, bank_account_id)
select 
	reverse(full_name),
    'Active',
    id
    from clients
    where id between 191 and 200;
    