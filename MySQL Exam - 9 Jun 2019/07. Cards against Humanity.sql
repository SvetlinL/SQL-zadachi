select c.id, concat(c.card_number,' : ',cl.full_name) as card_token
from cards as c
join bank_accounts as ba on c.bank_account_id = ba.id
join clients as cl on ba.client_id = cl.id
order by c.id desc;
