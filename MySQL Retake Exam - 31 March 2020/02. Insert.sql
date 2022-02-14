insert into addresses(address, town, country, user_id)
select
u.username, u.`password`, u.ip, u.age from users as u
where u.gender = 'M';