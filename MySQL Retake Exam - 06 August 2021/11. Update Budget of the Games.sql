delimiter $$
create procedure udp_update_budget(min_game_rating float)
begin
	update `games` as g
    left join games_categories as gc on g.id = gc.game_id
	left join categories as c on gc.category_id = c.id
    set g.`budget` = `budget` + 100000,
		g.`release_date` = g.`release_date` + interval 1 year 
    where c.id is null and g.rating > min_game_rating and g.release_date is not null;
end
$$    
    
