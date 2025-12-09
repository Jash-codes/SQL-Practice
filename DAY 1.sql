use sakila;

-- Select columns: Write a query to fetch the first_name, last_name,
-- and email of all customers from the customer table.
select first_name, last_name, email
from customer
limit 5;

-- Filter (Numeric): Write a query to find all films
--  from the film table that have a rental_rate of 0.99.
select title, rental_rate
from film
where rental_rate = 0.99;

-- Filter (Text): Write a query to find the title and description
-- of all films that have a rating of 'G'.
select title, description, rating 
from film
where rating = 'G';

-- Sorting: Write a query to display all payments from the payment table, 
-- sorted by the amount in descending order.
select payment_id, amount
from payment
order by amount desc;

-- Combo Challenge: Write a query to find the title, length, and rental_rate of all 
-- films that have a length greater than 100 minutes, sorted by length in ascending order.
select title, length, rental_rate
from film
where length > 100
order by length asc;