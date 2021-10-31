USE Campus_Eats_Fall2020;

DELIMITER //
CREATE PROCEDURE spGetDriverRating(IN id INT, OUT avg_rating FLOAT)
BEGIN
	SELECT AVG(r.driver_rating)
    INTO avg_rating
    FROM `order` o
    JOIN `rating` r
    WHERE o.order_id = r.order_id
    AND o.driver_id = id
    GROUP BY o.driver_id;
END //

DELIMITER ;

call spGetDriverRating(4, @avg_rating);
SELECT @avg_rating;
