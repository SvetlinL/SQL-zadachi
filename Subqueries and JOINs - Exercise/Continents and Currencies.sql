SELECT 
    c.`continent_code`,
    c.`currency_code`,
    count(*) as `currency_usage`
FROM
    `countries` AS c
GROUP BY c.`continent_code`, `currency_code`
having `currency_usage` > 1 and `currency_usage` = 
(
	select count(*) as `most_used_curr` 
	from `countries` as c2
	where c2.`continent_code` = c.`continent_code`
	group by c2.`currency_code`
	order by `most_used_curr` desc
    limit 1
)
order by c.continent_code, c.currency_code;
 