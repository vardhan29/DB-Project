USE Campus_Eats_Fall2020;

-- JOIN order and delivery tables and store the data as CTE in order_count
WITH `order_count` AS (
	SELECT d.delivery_id, o.person_id
	FROM `order` o
	LEFT OUTER JOIN ( SELECT delivery_id, delivery_time FROM `delivery` 
						WHERE delivery_time BETWEEN '2002-01-01' AND '2021-12-05') AS d
ON o.delivery_id = d.delivery_id)
-- COUNT the rows where the delivery_id it not null, if all are null the count should be 0
SELECT p.person_id, p.person_name, SUM(CASE WHEN oc.delivery_id IS NULL THEN 0 ELSE 1 END) AS total_orders  
FROM `person` p
LEFT OUTER JOIN `order_count` oc
ON p.person_id = oc.person_id
WHERE p.person_id = 1
GROUP BY p.person_id;