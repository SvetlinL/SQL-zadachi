select concat(substring(p.`description`,1,30),'...') as summary,
p.`date`
from photos as p
where extract(day from p.`date`) = 10
order by p.`date` desc;



// moje i day(p.date)