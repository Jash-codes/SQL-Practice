-- RIGHT JOIN:
-- Flip your Day 9 logic. Join film (Left) and inventory (Right).
-- Use RIGHT JOIN.
-- Goal: This will ensure every single piece of inventory is listed. If there is an 
-- inventory item that somehow doesn't link to a film (impossible in Sakila due to strict rules,
--  but possible in real life), it would show up here.

select film.title, inventory.inventory_id
from film
right join inventory on film.film_id = inventory.film_id;

-- -- Task: Write a query to retrieve the first_name from the customer table and the 
-- amount from the payment table. The result must include:
-- -- All customers (including those who have not made a payment).
-- -- All payments (including those not linked to a valid customer).

-- -- Constraints:
-- -- MySQL does not support FULL OUTER JOIN. You must use a UNION of a LEFT JOIN and a 
-- RIGHT JOIN to achieve this.
-- -- Join condition: customer_id.

select customer.first_name, payment.amount
from customer
left join payment on customer.customer_id = payment.customer_id
UNION
select customer.first_name, payment.amount
from customer
right join payment on customer.customer_id = payment.customer_id;


