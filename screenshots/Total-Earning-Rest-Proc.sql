USE Campus_Eats_Fall2020;

-- Stored Procedure to get the total money earned by a restaurant from the orders received.
-- Input  : restaurant id
-- Output : Total amount received by the restaurant till date

-- Change Delimiter to '//'
DELIMITER //
CREATE PROCEDURE spGetTotalEarning(IN id INT, OUT total_earning FLOAT)
BEGIN
	-- Add the total pirce per order for a restaurant to get total earnings
	SELECT SUM(o.total_price)
    INTO total_earning
    FROM `order` o
    WHERE o.restaurant_id = id;
END //

-- Set Delimiter back to ';'
DELIMITER ;

-- Call the stored procedure by sending the input and the output variable
CALL spGetTotalEarning(4, @total_earning);
-- View that data by using SELECT on the output variable
SELECT @total_earning;
