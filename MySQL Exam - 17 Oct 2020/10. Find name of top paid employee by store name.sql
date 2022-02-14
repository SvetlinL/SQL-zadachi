create function udf_top_paid_employee_by_store(store_name VARCHAR(50))
returns varchar(100)
begin
return(select 
concat(e.first_name,' ',e.middle_name,'.',' ',e.last_name,' works in store for ',
timestampdiff(year,e.hire_date,'2020-10-18'),' years')
from employees as e
join stores as s on e.store_id = s.id
where s.`name` = store_name
order by e.salary desc limit 1);
end