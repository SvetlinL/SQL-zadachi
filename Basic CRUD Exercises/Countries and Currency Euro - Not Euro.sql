select `country_name`,`country_code`,IF(`currency_code`='EUR','Euro','Not Euro') as `currency`
from `countries`
order by `country_name` asc;