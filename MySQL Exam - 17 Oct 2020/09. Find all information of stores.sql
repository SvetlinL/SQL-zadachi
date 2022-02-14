select reverse(s.`name`) as reversed_name,
concat(upper(t.`name`),'-',a.`name`) as full_address,
count(e.id) as employees_count
from stores as s
join employees as e on s.id = e.store_id
join addresses as a on s.address_id = a.id
join towns as t on a.town_id = t.id
group by reversed_name, full_address
having employees_count >= 1
order by full_address;
