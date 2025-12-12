-- Basic Grouping: Write a query to find the average replacement_cost for each 
-- rating in the film table.
-- Columns to select: rating, avg_cost.
-- Order by: avg_cost descending.

select avg(replacement_cost) as avg_cost, rating
from film
GROUP BY rating
order by avg_cost desc;

-- Grouping + Count: Write a query to find the total count of films for 
-- each rental_duration (e.g., how many films can be rented for 3 days, 4 days, etc.).
-- Columns: rental_duration, film_count.
select count(film_id) as total_films, rental_duration 
from film
GROUP BY rental_duration;

-- Business Logic: Write a query to find the total amount (SUM(amount)) 
-- processed by each staff_id in the payment table.
select SUM(amount) as total_amount, staff_id
from payment
GROUP BY staff_id;

-- Finding Duplicates (Tricky): Write a query to count how many actors 
-- share the same first_name.
-- Hint: Group by first_name and count the actor_id. Sort by the count in descending 
-- order to see the most common names at the top.

select count(actor_id) as total_actors, first_name
from actor
GROUP BY actor_id
order by total_actors DESC;
