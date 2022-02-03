select count(`category_id`) as `appetizers`
from `products`
where `category_id` = 2 and `price` > 8;