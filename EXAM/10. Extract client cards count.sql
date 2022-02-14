delimiter $$
create function udf_customer_products_count(`name` VARCHAR(30))
returns integer
deterministic
begin 
 return(
			select count(p.id) from customers as c
			join orders as o on c.id = o.customer_id
			join orders_products as op on o.id = op.order_id
			join products as p on op.product_id = p.id
			where c.first_name = `name`
			group by c.id);
end
$$