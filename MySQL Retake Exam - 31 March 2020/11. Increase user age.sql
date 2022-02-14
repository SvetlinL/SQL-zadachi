delimiter $$
create procedure udp_modify_user (address VARCHAR(30), town VARCHAR(30))
begin
	update users as u
    right join addresses as a on u.id = a.user_id
    set u.age = u.age + 10
    where a.address = address and a.town = town and u.id is not null;
end
$$

    
    