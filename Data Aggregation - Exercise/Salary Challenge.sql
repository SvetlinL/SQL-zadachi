select e1.`first_name`,e1.`last_name`,e1.`department_id`
from `employees` as e1
	join (
		select e2.`department_id`, avg(e2.`salary`) as `average_salary`
        from `employees` as `e2`
        group by e2.`department_id`
	) as `dep_average` on e1.department_id = dep_average.department_id
where `salary` > dep_average.average_salary 
order by `department_id`,`employee_id`
limit 10;