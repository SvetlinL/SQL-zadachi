select concat_ws(' ',e.first_name,e.last_name) as Full_name,
s.`name`, a.`name` as address, e.salary
from employees as e
join stores as s on e.store_id = s.id
join addresses as a on s.address_id = a.id
where 
e.salary < 4000 and
a.name like '%5%' and 
char_length(s.name) > 8 and 
e.last_name like '%n'; 
