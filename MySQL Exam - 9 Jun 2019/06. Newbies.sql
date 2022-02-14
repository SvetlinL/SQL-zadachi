select id, concat(first_name,' ',last_name) as full_name, concat('$',round(salary,2)) as salary,
started_on from employees
where salary >= 100000 and started_on >= '2018-01-01'
order by salary desc, id;
