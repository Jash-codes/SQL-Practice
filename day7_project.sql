-- 📋 Manager's Report Requests
-- Customer Emails: The marketing team needs the email of all customers named "NANCY" or "TERRY".
select email,first_name
from customer
where first_name = 'nancy' or 'terry';

-- Movie Lengths: Find the title and length of the top 5 shortest movies.
select title,length
from film
order by length ASC
limit 5;


-- Missing Data: (Tricky!) Find the first_name and last_name of any customer 
-- whose email is NULL. (Hint: Use IS NULL instead of = NULL). If no results, that's 
-- fine—it means data is clean!
select first_name, last_name, email
from customer
where email IS NULL;

-- Cheap Rentals: Find the title of movies that cost $0.99 to rent and have a 
-- rating of 'G'.
select title,rental_rate,rating
from film
where rental_rate = 0.99 AND rating = 'G';


-- Staff Performance: Find the total number of payments (COUNT) handled by each 
-- staff member (staff_id).
select staff_id,sum(amount) as total_amount
from payment
GROUP BY staff_id;


-- Big Spenders: Find the customer_id of the top 3 customers who have spent the
--  most money (SUM(amount)).
select customer_id,sum(amount) as total_spent
from payment
GROUP BY customer_id
ORDER BY total_spent desc limit 3;

-- Movie Ratings: Which rating (G, PG, etc.) has the most movies? Display the 
-- rating and the count, sorted by count descending.
select rating, count(title) as total_movies
from film
GROUP BY rating 
order by total_movies desc;

-- Long Duration Movies: Find the rating categories where the average movie 
-- length is greater than 120 minutes.
select rating, avg(length) as avg_length
from film
GROUP BY rating
having avg_length > 120;

-- Payment Dates: How many payments were made on '2005-05-25'? (Hint: Use DATE(payment_date) 
-- to ignore the time part, or simply check counts for now if dates are tricky). -> Actually, 
-- for now, just find how many payments have an amount exactly equal to 2.99. 
-- (Let's keep dates simple for Week 1).
SELECT DATE(payment_date) as day, COUNT(payment_id) as total_payments
FROM payment
WHERE DATE(payment_date) = '2005-05-25'
GROUP BY DATE(payment_date);


-- The "R" Rated Report: Find the special_features categories. Only consider movies rated 'R'. 
-- Group by special_features. Only show categories that have more than 10 movies.

select special_features,rating,count(film_id) as movie_count
from film 
where rating = 'R'
group by special_features
having movie_count > 10;