select p.id as photo_id, count(distinct l.id) as likes_count, count(distinct c.id) as comments_count
from photos as p
left join likes as l on p.id = l.photo_id
left join comments as c on p.id = c.photo_id
group by photo_id
order by likes_count desc, comments_count desc, p.id;