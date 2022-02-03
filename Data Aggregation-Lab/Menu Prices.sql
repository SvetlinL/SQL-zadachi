select `category_id`,
round(avg(`price`),2) as `Average Price`,
min(`price`) as `Cheapest Product`,
max(`price`) as `Most Expensive Product`
from `products`
group by `category_id`;