select `department_id`, min(`salary`) as `minimum_salary`
from `employees`
where `department_id` in (2,5,7) and `hire_date` > '2000-01-01'
group by `department_id`
order by `department_id` asc;