select e1.`employee_id`,e1.`first_name`,e1.`last_name`,e2.`department_id`,e1.`salary`
from `employees` as e1
join `departments`as e2
on e1.department_id = e2.department_id
where e1.manager_id is null;