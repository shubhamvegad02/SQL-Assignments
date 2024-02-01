--Folder-3

--use database rental_movie;
--select distinct customer_id, amount
--from payment
--where amount >=7.99
--order by amount asc;


-- select title, rental_rate, replacement_cost
-- from film
-- where rental_rate>2.99 OR replacement_cost >19.99;




--Folder-4

-- select title , replacement_cost , rental_duration
-- from film
-- where rental_duration between 4 and 6
-- order by replacement_cost desc
-- limit 100;

-- select title
-- from film
-- where length>120 
-- and description Ilike '%Action%' 
-- and rating in('G', 'PG');




--Folder - 6




-- select count(first_name) as fnc, first_name
-- from actor
-- group by first_name
-- order by fnc desc;




--Folder - 8




-- select title, l.name, f.rental_rate
-- from film f inner join language l
-- on f.language_id = l.language_id

-- select concat(a.first_name,' ',a.last_name) as "Actor Name", count(fa.actor_id) as Movies 
-- from film_actor fa inner join actor a
-- on a.actor_id = fa.actor_id
-- group by a.first_name, a.last_name
-- order by Movies desc;


-- select md.rating, count(md.rating)
-- from rental r left join
-- (select f.rating, f.film_id, i.inventory_id
-- from film f left join inventory i
-- on f.film_id = i.film_id) md
-- on r.inventory_id = md.inventory_id
-- group by md.rating
-- order by count;




 --Folder - 10
 
-- select date(rental_date) as "rental date", date(return_date)"return date", AGE(return_date, rental_date) as duration , concat(first_name,' ', last_name) as Name, email
-- from customer c
-- inner join rental r
-- on c.customer_id = r.customer_id
-- where rental_date is not null and extract(day from AGE(return_date, rental_date))>7
-- order by duration desc;

 -- select title, substr(title,15)
-- from film
-- where length(title)>15;
-- select title, substr(title,10)
-- from film
-- where length(title)>10;
-- select title, substr(title, 5,3)
-- from film;

--Folder - 12


-- select  concat(c.first_name, ' ', c.last_name),c.email, sum(p.amount),
-- case
-- when sum(amount)>200 then 'Elite'
-- when sum(amount)>150 then 'Platinum'
-- when sum(amount)>100 then 'Gold'
-- else 'Silver'
-- end as category
-- from customer c
-- join payment p
-- on c.customer_id = p.customer_id
-- group by c.customer_id;

-- create view orderByCustomer as 
-- select  concat(c.first_name, ' ', c.last_name),c.email, sum(p.amount),
-- case
-- when sum(amount)>200 then 'Elite'
-- when sum(amount)>150 then 'Platinum'
-- when sum(amount)>100 then 'Gold'
-- else 'Silver'
-- end as category
-- from customer c
-- join payment p
-- on c.customer_id = p.customer_id
-- group by c.customer_id;

-- select * from orderByCustomer;

--Folder 14


-- CREATE DATABASE mycommerce;

-- CREATE TABLE order_details(
-- order_id serial PRIMARY KEY,
-- 	customer_name VARCHAR(100),
-- 	product_name VARCHAR(100),
-- 	order_from varchar(100),
-- 	order_amount float, 
-- 	order_date date,
-- 	delivery_date date
-- )

-- select * from order_details;


-- SELECT product_name, count(product_name),round(sum(order_amount),2)
-- from order_details
-- group by product_name;

-- alter TABLE order_details RENAME column customer_name to customer_full_name;

-- ALTER TABLE order_details ADD column cancel_date date;











