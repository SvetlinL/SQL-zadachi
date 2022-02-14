update `employees`
set `salary` = `salary` + 1000
where `id` in (
select `leader_id` from teams
) and age < 40 and `salary` <= 5000; 