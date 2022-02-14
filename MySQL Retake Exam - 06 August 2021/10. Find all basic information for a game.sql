create function udf_game_info_by_name (game_name VARCHAR (20))
returns text
deterministic
begin
return (
select concat('The ',g.name,' is developed by a ',t.name,
' in an office with an address ',a.name)
from games as g
join teams as t on g.team_id = t.id
join offices as o on t.office_id = o.id
join addresses as a on o.address_id = a.id
where g.name = game_name
 );
end