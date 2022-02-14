select concat(e.first_name,' ',e.last_name) as `name`,
e.started_on, count(ec.client_id) as count_of_clients
from employees as e
join employees_clients as ec on e.id = ec.employee_id
group by e.id
order by count_of_clients desc, e.id limit 5;