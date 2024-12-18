select country_id, count(*) as city_count from city
    group by country_id
        having count(*) >= 20;