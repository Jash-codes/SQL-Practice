-- HAVING with COUNT: Write a query to find all last_names 
-- in the actor table that are shared by more than 3 actors.
select count(actor_id) as total_actors, last_name
from actor
group by last_name
having total_actors > 3;

-- HAVING with SUM: Write a query to find customer_ids who have spent 
-- a total amount of more than $100 in payments.
select customer_id, sum(amount) as amount_morethan_100
from payment
GROUP BY customer_id
having amount_morethan_100 > 100;


-- HAVING with AVG: Write a query to find which rating categories 
-- (G, PG, etc.) have an average film length of over 115 minutes.
select rating, avg(length) as avg_length
from film
GROUP BY rating
having avg_length > 115;

-- The "Order of Operations" Challenge:

-- Find the rental_duration categories.
-- Only consider films with a replacement_cost greater than 15.00 (Use WHERE).
-- Group by rental_duration.
-- Only keep groups that have more than 100 films (Use HAVING).

select rental_duration, count(film_id) as film_count
from film
where replacement_cost > 15.00
GROUP BY rental_duration
having film_count > 100;


-- select rental_duration
-- from film
-- limit 5;