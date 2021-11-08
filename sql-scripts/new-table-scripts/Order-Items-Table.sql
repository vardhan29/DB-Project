USE Campus_Eats_Fall2020;

CREATE TABLE IF NOT EXISTS `Campus_Eats_Fall2020`.`order_item` (
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
    REFERENCES `Campus_Eats_Fall2020`.`item` (`restaurant_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;