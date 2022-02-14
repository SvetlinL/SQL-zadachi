INSERT INTO products_stores (product_id ,store_id )
SELECT id,1
FROM products
WHERE id NOT IN (SELECT product_id FROM products_stores);


-- -------------------------------

insert into `products_stores`(product_id,store_id)
select p.id,1 
from products as p 
left join `products_stores` as ps on p.id = ps.product_id
where ps.product_id is null;