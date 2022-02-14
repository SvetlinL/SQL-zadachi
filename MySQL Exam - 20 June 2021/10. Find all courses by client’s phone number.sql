create function udf_courses_by_client (phone_num VARCHAR (20))
returns integer
deterministic
begin
return(
select count(cr.id) as count from courses as cr
join clients as cl on cr.client_id = cl.id
where cl.phone_number = phone_num);
end