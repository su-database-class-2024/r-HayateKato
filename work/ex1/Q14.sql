select store.store_id, address.address, city.city as city_name from store 
    join address on store.address_id = address.address_id
        join city on address.city_id = city.city_id;