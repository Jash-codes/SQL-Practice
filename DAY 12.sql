-- Find films longer than the average length
SELECT title, length
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- Find all customers who have returned a movie late (This is just an example logic)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (SELECT customer_id FROM rental WHERE return_date IS NULL);

---------------------------------------------------------------------------------------

-- Find all films that have a rental_rate higher than the average rental rate of all films.
select title, rental_rate
from film
where rental_rate > (select avg(rental_rate) from film);

-- Problem 2: Find all films that are in the 'Action' category using a subquery (Do not use a JOIN).
select title
from film
where film_id in 
    (select film_id from film_category where category_id = 
        (select category_id
            from category where name = 'action'));

-- Problem 3: Find the specific payment that has the highest amount ever recorded.

select payment_id,amount
from payment
where amount in (select max(amount) as highest_paid
                    from payment);
