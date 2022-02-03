create procedure usp_raise_salaries(department_name varchar (50))
begin
	update `employees` as e
	join `departments` as d on e.department_id = d.department_id
	set e.`salary` = e.`salary` * 1.05
	where d.name = department_name;
end