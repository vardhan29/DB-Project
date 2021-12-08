USE Campus_Eats_Fall2020;

delimiter $$

CREATE FUNCTION restaurantEaring(rest_id INT) 
	RETURNS FLOAT DETERMINISTIC
    BEGIN
		DECLARE temp FLOAT;
		SELECT SUM(total_price)
		INTO temp
        FROM `order`
        WHERE restaurant_id = rest_id;
		RETURN temp;
	END$$

delimiter ;

SELECT r.restaurant_id, r.restaurant_name, restaurantEaring(r.restaurant_id)
FROM restaurant r;
    