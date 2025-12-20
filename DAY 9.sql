-- -- Basic Left Join: Write a query to join customer (left) and address (right) on address_id. 
-- Show first_name, last_name, and address.
-- -- Goal: Ensure we see all customers, even if their address is missing (though in Sakila, 
-- data is pretty clean, so you might not see NULLs, but the query structure matters).
select customer.first_name, customer.last_name, address.address
from customer
left join address on customer.address_id = address.address_id;


-- -- Inventory Check: Write a query to join film (left) and inventory (right) on film_id.
-- -- Select: film.title, inventory.inventory_id.
-- -- Goal: This will list all films. If a film is not in stock (not in inventory), 
-- the inventory_id will be NULL.
select inventory.inventory_id,film.title
from film
left join inventory on film.film_id = inventory.film_id;


-- -- The "Unrented Films" Report (The IS NULL Trick):
-- -- Using the query from Q2, add a WHERE clause to find films that exist in the database 
-- but are NOT in the inventory.
-- -- Hint: WHERE inventory.inventory_id IS NULL.
select inventory.inventory_id,film.title
from film
left join inventory on film.film_id = inventory.film_id
where inventory.inventory_id is null;