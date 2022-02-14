delimiter $$
create function udf_users_photos_count(username VARCHAR(30))
returns integer
deterministic
begin
	return(
    select count(p.id) from users as u
    join users_photos as up on u.id = up.user_id
    join photos as p on up.photo_id = p.id
    where u.username = username
    );
end  $$ 

