select `peak_name`,`river_name`,lower(concat(left(`peak_name`,length(`peak_name`)-1),`river_name`)) as `mix`
from `peaks`,`rivers`
where `peak_name` like '%a' and `river_name` like 'a%'
order by `mix`;