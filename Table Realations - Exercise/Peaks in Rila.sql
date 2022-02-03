select `mountain_range`,`peak_name`,`elevation` as `peak_elevation`
from `mountains` as e1
join `peaks` as e2
on e1.id = e2.mountain_id
where e1.mountain_range = 'Rila'
order by `peak_elevation` desc;
