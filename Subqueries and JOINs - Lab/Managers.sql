select `employee_id`, concat(`first_name`, ' ',`last_name`) as `full_name`,
e2.`department_id`,e2.`name`
from `employees` as e1
join `departments` as e2 
on e1.employee_id = e2.manager_id
order by `employee_id` limit 5;