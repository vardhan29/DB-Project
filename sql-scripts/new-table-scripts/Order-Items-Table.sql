USE Campus_Eats_Fall2020;

DROP TABLE IF EXISTS `order_item`;
CREATE TABLE IF NOT EXISTS `order_item` (
  `order_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  `restaurant_id` INT NOT NULL,
  `quantity` INT NULL DEFAULT 1,
  PRIMARY KEY (`order_id`, `item_id`, `restaurant_id`),
  CONSTRAINT `order_id_1`
    FOREIGN KEY (`order_id`)
    REFERENCES `Campus_Eats_Fall2020`.`order` (`order_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `item_id`
    FOREIGN KEY (`item_id`)
    REFERENCES `Campus_Eats_Fall2020`.`item` (`restaurant_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `restaurant_id_1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `Campus_Eats_Fall2020`.`restaurant` (`restaurant_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

LOCK TABLES `order_item` WRITE;
INSERT INTO `order_item` VALUES
	(1, 1, 1, 1),
    (2, 2, 2, 1),
    (3, 3, 3, 1),
    (4, 4, 4, 1),
    (5, 5, 5, 1),
    (6, 6, 6, 1),
    (7, 2, 2, 1),
    (8, 4, 4, 2),
    (9, 6, 6, 3),
    (10, 3, 3, 1);
UNLOCK TABLES;