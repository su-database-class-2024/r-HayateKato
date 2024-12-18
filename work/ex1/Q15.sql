select city.city from city
    left outer join address on city.city_id = address.city_id
        where address.city_id is null;