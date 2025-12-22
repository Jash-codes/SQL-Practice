-- Find films that have a replacement_cost higher than the 
-- average replacement cost of their specific rating.

SELECT film.title,film.rating,film.replacement_cost
from film
where replacement_cost > (select avg(replacement_cost)
                            from film
                                where film.rating = film.rating);

-- Find all customers who have rented the specific 
-- movie "ACADEMY DINOSAUR".

select customer.first_name, customer.last_name
from customer
where EXISTS (select rental.rental_id
                from rental
                    inner join inventory on rental.inventory_id = inventory.inventory_id
                    inner join film on inventory.film_id = film.film_id
                    where film.title = 'academy dinosaur'
                    and rental.customer_id = customer.customer_id);