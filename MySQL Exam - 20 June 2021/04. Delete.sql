delete from `clients`
where id not in (select `client_id` from `courses`) and char_length(`full_name`) > 3