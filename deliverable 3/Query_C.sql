USE Campus_Eats_Fall2020;

WITH `order_count` AS (
	SELECT d.delivery_id, o.person_id, o.total_price + o.delivery_charge AS price
	FROM `order` o
	LEFT OUTER JOIN ( SELECT delivery_id, delivery_time FROM `delivery` 
						WHERE delivery_time BETWEEN '2002-01-01' AND '2016-01-01') AS d
ON o.delivery_id = d.delivery_id)
SELECT oc.person_id, p.person_name, SUM(CASE WHEN oc.delivery_id IS NULL THEN 0 ELSE oc.price END) AS total_price  
FROM `order_count` oc
INNER JOIN `person` p
ON oc.person_id = p.person_id
GROUP BY oc.person_id;