USE Campus_Eats_Fall2020;

delimiter $$

-- Creating function to get the total restaurant earning for all the orders processed for the particular restaurant
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

-- Demonstrating the use of function in SQL SELECT statement
SELECT r.restaurant_id, r.restaurant_name, restaurantEaring(r.restaurant_id)
FROM restaurant r;
    