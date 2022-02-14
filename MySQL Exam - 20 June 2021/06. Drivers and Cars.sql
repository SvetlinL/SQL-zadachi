select d.first_name,d.last_name, c.make, c.model, c.mileage
from drivers as d
join cars_drivers as cd on d.id = cd.driver_id
join cars as c on cd.car_id = c.id
where c.mileage is not null
order by c.mileage desc , d.first_name;