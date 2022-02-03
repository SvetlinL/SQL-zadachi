select `town_id`,`name` from `towns`
where `name` like 'm%' or `name` like 'k%' or `name` like 'b%' or `name` like 'e%'
order by `name` asc;