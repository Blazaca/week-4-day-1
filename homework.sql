-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

--"Wahlberg"
--"Wahlberg"

-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(payment)
FROM payment;

-- 14596 payments

--3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- All of these have the max 8
--193,789,730,378,595,849,231,586,69,764,745,1,767,369
--738,638,31,356,199,683,127,609,403,174,266,109,434
--220,239,873,893,468,525,897,697,835,773,945,444,412,880
--846,331,911,621,301,1000,361,91,200,358,973,350,559,86,489,382
--702,531,856,870,295,206,73,418,460,103,341,748,500,753,572

--4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name LIKE 'William';

--none

--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(staff_id)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;

-- Staff_id 2 @ 7304 rentals

--6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;

-- 378 distinct districts

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id ,COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Film_id 508 has the max of 15 actors

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id;

-- Store_id 1 has max of 13 names ending in 'es'

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount)
FROM payment
WHERE rental_id > 250 and 380 < customer_id and 430 > customer_id;

-- 1202 payments

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;

-- There are 5 different rating and at 223 PG-13 is the label most on movies