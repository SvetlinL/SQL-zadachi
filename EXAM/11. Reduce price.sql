delimiter $$
create procedure udp_reduce_price(category_name VARCHAR(50))
begin
	update products as p
    join categories as c on p.category_id = c.id
    join reviews as r on p.review_id = r.id
    set p.price = p.price - (p.price*0.30)
    where r.rating < 4 and c.`name` = category_name;
end
$$    