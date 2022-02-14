insert into reviews(content, picture_url, published_at, rating)
select
	substring(p.`description`,1,15) as content,
    reverse(p.`name`),
    '2010-10-10',
    p.price / 8
    from products as p
    where p.id >= 5;
	