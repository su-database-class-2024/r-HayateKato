select country_id, count(*) as city_count from city
    group by country_id
        order by city_count desc;