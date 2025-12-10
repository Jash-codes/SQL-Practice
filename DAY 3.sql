-- AND: Write a query to find the payment_id, amount, and payment_date 
-- for payments where the amount is greater than 5.00 AND the customer_id is 1.
select customer_id, payment_id, amount, payment_date
from payment
where amount > 5.00 AND customer_id = 1;

-- OR: Write a query to find all customers who live in store_id 1 
-- OR have the last_name 'DAVIS'.
select first_name, last_name, store_id
from customer
where store_id = 1 OR last_name = 'DAVIS';

-- NOT: Write a query to find all films that are NOT rated 'NC-17'.
select title, rating 
from film
where NOT rating = 'NC-17';

-- LIKE (Starts With): Write a query to find all customers 
-- whose last_name starts with 'S'.
select last_name
from customer
where last_name LIKE 'S%';

-- LIKE (Contains): Write a query to find all films that have the word 
-- 'DINOSAUR' anywhere in the description.

select title, description 
from film
where description like '%DINOSAUR%';

-- Wildcard Challenge: Write a query to find all actors whose first_name 
-- starts with 'A' and is at least 4 characters long (Hint: You can combine 
-- LIKE 'A%' with LENGTH(first_name) >= 4 OR use underscores if you want to be tricky).

select first_name
from actor
where first_name LIKE 'A___%';