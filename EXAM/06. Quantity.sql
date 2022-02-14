select p.id, b.id as brand_id,p.`name`,p.quantity_in_stock
from products as p
join brands as b on p.brand_id = b.id
where p.price > 1000 and p.quantity_in_stock < 30
order by p.quantity_in_stock, p.id;