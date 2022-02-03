update `employees`
set `salary` = `salary` * 1.12
where `department_id`= 1 or `department_id`= 2 or `department_id`= 4 or `department_id`= 11;

select `salary` from `employees`;

