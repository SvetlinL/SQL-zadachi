update `employees` as e
join stores as s on e.store_id = s.id 
set manager_id = 3, salary = salary - 500
where hire_date > '2003-01-01' and 
(s.`name` != 'Cardguard' and s.`name` != 'Veribet');