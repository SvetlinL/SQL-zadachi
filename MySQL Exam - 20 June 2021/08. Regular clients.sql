select cl.full_name, count(c.id) as count_of_cars, sum(cr.bill) as total_sum
from clients as cl
join courses as cr on cl.id = cr.client_id
join cars as c on cr.car_id = c.id
group by cl.full_name
having cl.full_name like '_a%'and count_of_cars > 1
order by cl.full_name;
