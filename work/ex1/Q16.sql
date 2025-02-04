select category.name as category_name, count(rental.rental_id) as total_rentals, sum(payment.amount) as total_revenue from rental
    join inventory on rental.inventory_id = inventory.inventory_id
        join film on inventory.film_id = film.film_id
            join film_category on film.film_id = film_category.film_id
                join category on film_category.category_id = category.category_id
                    join payment on rental.rental_id = payment.rental_id
                        group by category.name;
