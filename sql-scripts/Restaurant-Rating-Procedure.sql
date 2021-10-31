USE Campus_Eats_Fall2020;

-- Stored Procedure to get the average restaurant rating based on all the reviews.
-- Input  : Restaurant id
-- Output : Average Rating of the restaurant

-- Change Delimiter to '//'
DELIMITER //

CREATE PROCEDURE spGetRestaurantRating(IN id INT, OUT avg_rest_rating FLOAT)
BEGIN
	-- Get average rating for a restaurant by joining two tables : rating and order
	SELECT AVG(r.restaurant_rating)
    INTO avg_rest_rating
    FROM `order` o
    JOIN `rating` r
    WHERE o.order_id = r.order_id
    AND o.restaurant_id = id
    GROUP BY o.restaurant_id;
END //

-- Set Delimiter back to ';'
DELIMITER ;

-- Call the stored procedure by sending the input and the output variable
CALL spGetRestaurantRating(4, @avg_rest_rating);
-- View that data by using SELECT on the output variable
SELECT @avg_rest_rating;
