-- Write a query to retrieve the title of the film and the name of the category 
-- (rename it as category_name). Filter: Only show rows where the category name is 'Horror'.

select film.title, category.name as category_name
from film
inner join film_category on film.film_id  = film_category.film_id
inner join category on film_category.category_id = category.category_id
where category.name = 'horror';

-- Write a query to retrieve the first_name, last_name, and city for all customers. 
-- Filter: Only show customers whose last_name starts with the letter 'W'

select customer.first_name, customer.last_name,city.city
from customer
inner join address on customer.address_id = address.address_id
inner join city on address.city_id = city.city_id
where customer.last_name like 'W%';

-- Write a query to retrieve the rental_date and the title of the movie. 
-- Filter: Only return the row for rental_id = 1.

select rental.rental_id,film.title, rental.rental_date
from film
inner join inventory on film.film_id = inventory.film_id
inner join rental on inventory.inventory_id = rental.inventory_id
where rental.rental_id = 1;
