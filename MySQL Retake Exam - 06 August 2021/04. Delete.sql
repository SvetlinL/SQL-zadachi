delete g from `games` as g
left join games_categories as gc on g.id = gc.game_id
left join categories as c on gc.category_id = c.id
where release_date is null and c.id is null;