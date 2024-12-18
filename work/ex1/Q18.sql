select country.country as country_name, count(distinct customer.customer_id) as total_customers, sum(payment.amount) as total_revenue from customer
    join address on customer.address_id = address.address_id
        join city on address.city_id = city.city_id
            join country on city.country_id = country.country_id
                join payment on customer.customer_id = payment.customer_id
                    group by country.country;