-- DISTINCT: Write a query to find the unique/distinct 
-- special_features available in the film table.
select DISTINCT special_features
from film;


-- LIMIT: Write a query to find the top 10 highest
--  amount transactions from the payment table.
select payment_id, customer_id, amount
from payment
order by amount DESC
limit 10;

-- BETWEEN: Write a query to find all films from the 
-- film table where the length is between 100 and 120 minutes.
select film_id, title, length
from film
where length between 100 and 120;


-- IN: Write a query to find the first_name and last_name of 
-- customers whose customer_id is either 30, 40, or 50.
select customer_id, first_name, last_name
from customer
where customer_id in(30,40,50);

-- Combo Challenge: Write a query to find the title, rating, and 
-- rental_rate of films where the rating is IN ('G', 'R') AND the 
-- rental_rate is BETWEEN 2.00 AND 5.00.
select title, rating, rental_rate
from film
where rating in('G','R') and rental_rate BETWEEN 2.00 and 5.00;
