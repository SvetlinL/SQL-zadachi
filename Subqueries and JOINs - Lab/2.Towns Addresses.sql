select e1.`town_id`,e1.`name` as `town_name`, e2.`address_text`
from `towns` as e1
join `addresses` as e2 
on e1.town_id = e2.town_id
where e1.`name` = 'San Francisco' or  e1.`name` = 'Sofia' or e1.`name` = 'Carnation'
order by e1.town_id , e2.address_id;
