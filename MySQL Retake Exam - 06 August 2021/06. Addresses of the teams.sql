select t.`name` as team_name,
a.name as address_name,
character_length(a.name) as count_of_characters
from teams as t
join offices as o on t.office_id = o.id
join addresses as a on o.address_id = a.id
where o.website is not null
order by team_name, address_name;