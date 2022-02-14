select concat(u.id,' ',u.username) as id_username, u.email
from users as u
join users_photos as up on u.id = up.user_id
join photos as p on up.photo_id = p.id
where u.id = p.id
order by u.id;