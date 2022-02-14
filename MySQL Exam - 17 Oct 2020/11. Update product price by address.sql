delimiter $$ 
create procedure udp_update_product_price (address_name VARCHAR (50))
begin
	update `products` as p
    join products_stores as ps on p.id = ps.product_id 
    join stores as s on ps.store_id = s.id
    join addresses as a on s.address_id = a.id
    set p.price = (
    if (address_name like '0%', p.price + 100, p.price + 200)
    )
    where a.`name` = address_name;
end $$