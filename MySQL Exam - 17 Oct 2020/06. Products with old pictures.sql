select p.name as product_name,
p.price, p.best_before,
concat(substring(p.`description`,1,10),'...') as short_description,
pic.url
from products as p
join pictures as pic on p.picture_id = pic.id
where char_length(p.`description`) > 100 and pic.added_on < '2019-01-01' and p.price > 20
order by p.price desc;