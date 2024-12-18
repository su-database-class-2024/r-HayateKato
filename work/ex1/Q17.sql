select category.name as category_name, round(avg(date_part('day', rental.return_date - rental.rental_date))) as avg_rental_days from rental
    join inventory on rental.inventory_id = inventory.inventory_id
        join film on inventory.film_id = film.film_id
            join film_category on film.film_id = film_category.film_id
                join category on film_category.category_id = category.category_id
                    where rental.return_date is not null
                        group by category.name;