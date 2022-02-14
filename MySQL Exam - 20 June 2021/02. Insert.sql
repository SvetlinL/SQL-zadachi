insert into `clients` (full_name, phone_number)
select concat(first_name,' ', last_name) as full_name,
concat('(088) 9999',id*2)
from `drivers`
where `id` >=10 and `id` <=20;