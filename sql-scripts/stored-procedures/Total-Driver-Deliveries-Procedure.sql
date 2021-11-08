USE Campus_Eats_Fall2020;

-- Stored Procedure to get the total deliveries made by the driver.
-- Input  : Driver id
-- Output : Total deliveries of the driver

-- Change Delimiter to '//'
DELIMITER //
CREATE PROCEDURE spGetDriverDeliveries(IN id INT, OUT total_deliveries INT)
BEGIN
	-- Get total deliveries by counting the no of orders delivered by a driver
	SELECT COUNT(d.driver_id)
    INTO total_deliveries
    FROM `delivery` d
    WHERE d.driver_id = id;
END //

-- Set Delimiter back to ';'
DELIMITER ;

-- Call the stored procedure by sending the input and the output variable
CALL spGetDriverDeliveries(4, @total_deliveries);
-- View that data by using SELECT on the output variable
SELECT @total_deliveries;
