select p.id, p.`date` as date_and_time, p.`description`, count(c.id) as commentsCount
from photos as p
join comments as c on p.id = c.photo_id
group by p.id, date_and_time, p.`description`
order by commentsCount desc, p.id limit 5;