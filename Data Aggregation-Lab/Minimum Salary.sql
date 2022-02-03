select `department_id`,round(min(`salary`),2) as `Min Salary`
from `employees`
where `salary` > 800
group by `department_id`
limit 1;

