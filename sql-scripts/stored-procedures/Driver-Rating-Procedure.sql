USE Campus_Eats_Fall2020;

-- Stored Procedure to get the average driver rating based on all the reviews.
-- Input  : Driver id
-- Output : Average Rating of the driver

-- Change Delimiter to '//'
DELIMITER //

CREATE PROCEDURE spGetDriverRating(IN id INT, OUT avg_rating FLOAT)
BEGIN
	-- Get average rating for a driver by joining two tables : rating and order
	SELECT AVG(r.driver_rating)
    INTO avg_rating
    FROM `order` o
    JOIN `rating` r
    WHERE o.order_id = r.order_id
    AND o.driver_id = id
    GROUP BY o.driver_id;
END //

-- Set Delimiter back to ';'
DELIMITER ;

-- Call the stored procedure by sending the input and the output variable
CALL spGetDriverRating(4, @avg_rating);
-- View that data by using SELECT on the output variable
SELECT @avg_rating;
