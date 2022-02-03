CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INT 
DETERMINISTIC
BEGIN
	DECLARE e_count INT;
	SET e_count := (SELECT COUNT(employee_id) FROM employees AS e
	 JOIN addresses AS a ON a.address_id = e.address_id
	 JOIN towns AS t ON t.town_id = a.town_id
	WHERE t.name = town_name);
	RETURN e_count;
END 




-- --------------------------------------------------------------------

delimiter ##
create function ufn_count_employees_by_town(town_name varchar(50))
returns int
deterministic
begin
	return (
    select count(*) from `employees` as e
    join `addresses` as a on e.address_id = a.address_id
    join `towns` as t on a.town_id = t.town_id
    where t.name = town_name
    );
end
##