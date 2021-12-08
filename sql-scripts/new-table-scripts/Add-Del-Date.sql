ALTER TABLE `Campus_Eats_Fall2020`.`order` 
ADD COLUMN `delivery_date` DATETIME NULL DEFAULT '2021-12-05' AFTER `delivery_charge`;