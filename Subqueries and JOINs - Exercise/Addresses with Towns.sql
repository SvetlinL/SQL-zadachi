select e1.`first_name`,e1.`last_name`,e3.`name` as `town`,e2.`address_text`
from `employees` as e1
join `addresses` as e2 on e1.address_id = e2.address_id
join `towns` as e3 on e2.town_id = e3.town_id
order by `first_name`, `last_name` limit 5;