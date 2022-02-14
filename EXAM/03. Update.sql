update products
set `quantity_in_stock` = `quantity_in_stock` - 5
where quantity_in_stock between 60 and 70;