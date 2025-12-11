-- COUNT: Write a query to count how many distinct 
-- last_names exist in the actor table.
select count(distinct last_name)
from actor;

-- -- SUM: Write a query to find the total inventory count (sum of all items) 
-- -- available in the inventory table? (Wait, actually inventory is a list of items, 
-- so just COUNT() the rows in the inventory table).*
-- Task: Count the total rows in the inventory table
select count(inventory_id) 
from inventory;


-- AVG: Write a query to find the average rental_duration from the film table.
select AVG(rental_duration) as avg_rental_rate 
from film;

-- MIN/MAX (Money): Write a query to find the lowest and highest
--  replacement cost (replacement_cost) for a film in the film table.
select MIN(replacement_cost) as lowest_rep_cost , MAX(replacement_cost) as highest_rep_cost 
from film;

-- Combo Challenge: Write a query to find the Average amount, Total amount, 
-- and Count of payments for customer_id = 1.
select avg(amount) as avg_amount, sum(amount) as total_amount, count(payment_id)
from payment
where customer_id = 1;