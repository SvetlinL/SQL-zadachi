select `town_id`,`name` from `towns`
where `name` not like 'r%' and `name` not like 'b%' and `name` not like 'd%'
order by `name` asc;