select `name`,left(`start`,10) as `start` from games
where (select year(`start`))>=2011 and (select year(`start`))<=2012
order by `start`, `name` limit 50;