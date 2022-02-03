select c.`country_name`, r.`river_name` 
from `countries` as c
join `continents` as cont on c.continent_code = cont.continent_code
left join `countries_rivers` as cr on c.country_code = cr.country_code
left join `rivers` as r on cr.river_id = r.id
where cont.continent_code = 'AF'
order by c.country_name limit 5;
