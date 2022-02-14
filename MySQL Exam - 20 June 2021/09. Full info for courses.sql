select adr.name as `name`, 
( case 
	when hour(cr.`start`) between 6 and 20 then 'Day'
    else 'Night'
 end
) as day_time, round(cr.bill,2) as bill, cl.full_name, c.make, c.model, cat.name as category_name
from addresses as adr
join courses as cr on adr.id = cr.from_address_id
join clients as cl on cr.client_id = cl.id
join cars as c on cr.car_id = c.id
join categories as cat on c.category_id = cat.id
order by cr.id;