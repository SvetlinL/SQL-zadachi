insert into `games` (`name`,`rating`,`budget`,`team_id`)
select 
	reverse(lower(substring(`name`,2))),
    id, leader_id * 1000, id
from teams 
where id between 1 and 9;    