USE Campus_Eats_Fall2020;

DELIMITER //
CREATE PROCEDURE spGetRestaurantRating(IN id INT, OUT avg_rest_rating FLOAT)
BEGIN
	SELECT AVG(r.restaurant_rating)
    INTO avg_rest_rating
    FROM `order` o
    JOIN `rating` r
    WHERE o.order_id = r.order_id
    AND o.restaurant_id = id
    GROUP BY o.restaurant_id;
END //

DELIMITER ;

call spGetRestaurantRating(4, @avg_rest_rating);
SELECT @avg_rest_rating;
