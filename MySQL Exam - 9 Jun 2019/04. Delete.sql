delete e from employees as e
left join employees_clients as ec on e.id = ec.employee_id
where client_id is null;