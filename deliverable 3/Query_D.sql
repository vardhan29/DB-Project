USE Campus_Eats_Fall2020;

-- VIEW to get data of customer rating for each restaurant
CREATE OR REPLACE VIEW cust_rating AS
	SELECT p.person_id, p.person_name, re.restaurant_id, re.restaurant_name,AVG(r.restaurant_rating) AS restaurant_rating
    FROM `person` p
    INNER JOIN `order` o
    ON p.person_id = o.order_id
    INNER JOIN `restaurant` re
    ON o.restaurant_id = re.restaurant_id
    INNER JOIN `rating` r
    ON o.order_id = r.order_id
    GROUP BY p.person_id, p.person_name, re.restaurant_name;

-- SELECT query to get data from cust_rating VIEW for a particular customer and restaurant
SELECT * FROM cust_rating
WHERE person_id = 7 
	AND restaurant_id = 1; 