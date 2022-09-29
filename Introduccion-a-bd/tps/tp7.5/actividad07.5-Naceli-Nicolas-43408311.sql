use sakila;

-- Traer el menor valor de rental_rate de la tabla films
select * from film where rental_rate = (select min(rental_rate) from film);

select * from film;

-- Calcular la media de cada pelicula agrupada por rating
select rating, avg(replacement_cost) as avg_replacement_cost from film group by rating order by avg_replacement_cost;
