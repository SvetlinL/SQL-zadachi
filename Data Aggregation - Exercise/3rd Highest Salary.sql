select `department_id`,
(

select distinct `salary` from `employees` as `e2`
where e1.department_id = e2.department_id
order by `salary`desc
limit 2,1

) as `third_highest_salary`
from `employees` as `e1`
group by `department_id`
having `third_highest_salary` is not null
order by `department_id`;