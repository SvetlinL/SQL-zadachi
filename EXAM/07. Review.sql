select id,content,round(rating,2) as rating,picture_url,published_at
from reviews
where content like 'My%' and character_length(content) > 61
order by rating desc;