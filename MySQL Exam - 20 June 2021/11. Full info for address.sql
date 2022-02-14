create procedure udp_courses_by_address(address_name varchar(100))
begin
	select adr.name, cl.full_name,
	(
		case 
			when cr.bill <= 20 then 'Low'
			when cr.bill <= 30 then 'Medium'
			else 'High'
		end    
	) as level_of_bill, c.make, c.`condition`, cat.`name` as cat_name
	from addresses as adr
	join courses as cr on adr.id = cr.from_address_id
	join clients as cl on cr.client_id = cl.id
	join cars as c on cr.car_id = c.id
	join categories as cat on c.category_id = cat.id
	where adr.name = address_name
	order by c.make, cl.full_name;
end