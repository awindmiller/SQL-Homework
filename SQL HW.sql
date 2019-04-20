use sakila;

Select * from actor;
Select concat(first_name, ' ', last_name) as ActorName
from actor;

select actor_id, first_name, last_name 
from actor
where first_name = "Joe";

select * from actor
where last_name like "%GEN%";

select * from actor
where last_name like "%LI%"
order by last_name, first_name;

select * from country;

select country_id, country
from country
Where country In ("Afghanistan", "Bangladesh", "China");

alter table actor
add column description blob;

alter table actor
drop column description;

select last_name, count(last_name) as "TotalLastName"
from actor
group by last_name;

select last_name, count(last_name) as 'TotalLastName'
from actor
group by last_name
having count(last_name) >= 2;

update actor
set first_name = "Harpo"
where first_name = "Groucho"
and last_name = "Williams"
;

update actor
set first_name = "Groucho"
where first_name = "Harpo"
and last_name = "WILLIAMS";

show create table address;

select * from address;

select * from staff;


select first_name, last_name, address from address
inner join staff on address.address_id = staff.address_id
;

select sum(amount), first_name, last_name from payment
inner join staff on payment.staff_id = staff.staff_id
group by payment.staff_id;

select * from film_actor;

select count(actor_id), title from film_actor
inner join film on film_actor.film_id = film.film_id
group by film_actor.film_id;

select count(title) from film
where title = "Hunchback Impossible";

select * from payment;

select sum(amount), first_name, last_name from customer
inner join payment on customer.customer_id = payment.customer_id
group by customer.customer_id
order by last_name;

select * from film;
select title from film
where title like "Q%" or title like "K%"
-- where language_id = 1;

select * from customer;
select first_name, last_name, email, address_id from customer;
inner join country on customer.address_id = country.address_id
group by customer.address_id;
-- need help 7b 7c

select * from customer;









