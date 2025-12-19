-- Simple Join: Write a query to join the payment table and the customer table. 
-- Select the payment_id, amount, and the customer's first_name.
select payment.payment_id, payment.amount, customer.first_name
from payment
inner join customer on payment.customer_id = customer.customer_id;


-- Address Lookup: Write a query to join the address table and the city table. 
-- Select the address (street name) and the city.
select address.address, address.address2, city.city
from address
inner join city on address.city_id = city.city_id;


-- -- Filtering a Join: Write a query to find the first_name and last_name of all 
-- -- actors who have appeared in the film "AFRICAN EGG".
select actor.first_name, actor.last_name
from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film_actor.film_id = film.film_id
where film.title = 'african egg';


-- -- The "Ambiguous Column" Trap: Try to join staff and payment. Select first_name, 
-- -- last_name, and amount.
select staff.first_name, staff.last_name,payment.amount
from staff
inner join payment on staff.staff_id = payment.staff_id;

