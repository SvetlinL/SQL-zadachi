select count(p.id) as items_count, c.`name`, sum(p.quantity_in_stock) as total_quantity
from categories as c
join products as p on c.id = p.category_id
group by c.id,c.name
order by items_count desc, total_quantity limit 5;