select title from film
    where replacement_cost = (select max(replacement_cost) from film);