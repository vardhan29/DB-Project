USE Campus_Eats_Fall2020;

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `item_id` INT UNSIGNED NOT NULL,
  `restaurant_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `price_per_unit` FLOAT NULL DEFAULT 0.0,
  `description` VARCHAR(100) NULL,
  PRIMARY KEY (`item_id`, `restaurant_id`),
  INDEX `restaurant_id_idx` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `restaurant_id`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `Campus_Eats_Fall2020`.`restaurant` (`restaurant_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

LOCK TABLES `item` WRITE;
INSERT INTO `item` VALUES
	(1, 1, 'Pizza', 9.18, "Veg Pizza"),
	(2, 1, 'Burger', 4.32, "Burger with chicken patty"),
	(3, 1, 'French fries', 1.50, "French fries with ketchup"),
	(4, 1, 'Noodles', 6.00, "Noodles with meatballs"),
	(5, 1, 'Sphagetti', 12.00, "Sphagetti with meatballs"),
	(6, 1, 'Chicken Tikka', 15.00, "Indian delicacy"),
	(1, 2, 'Pizza', 9.18, "Veg Pizza"),
	(2, 2, 'Burger', 4.32, "Burger with chicken patty"),
	(3, 2, 'French fries', 1.50, "French fries with ketchup"),
	(4, 2, 'Noodles', 6.00, "Noodles with meatballs"),
	(5, 2, 'Sphagetti', 12.00, "Sphagetti with meatballs"),
	(6, 2, 'Chicken Tikka', 15.00, "Indian delicacy"),
	(1, 3, 'Pizza', 9.18, "Veg Pizza"),
	(2, 3, 'Burger', 4.32, "Burger with chicken patty"),
	(3, 3, 'French fries', 1.50, "French fries with ketchup"),
	(4, 3, 'Noodles', 6.00, "Noodles with meatballs"),
	(5, 3, 'Sphagetti', 12.00, "Sphagetti with meatballs"),
	(6, 3, 'Chicken Tikka', 15.00, "Indian delicacy"),
	(1, 4, 'Pizza', 9.18, "Veg Pizza"),
	(2, 4, 'Burger', 4.32, "Burger with chicken patty"),
	(3, 4, 'French fries', 1.50, "French fries with ketchup"),
	(4, 4, 'Noodles', 6.00, "Noodles with meatballs"),
	(5, 4, 'Sphagetti', 12.00, "Sphagetti with meatballs"),
	(6, 4, 'Chicken Tikka', 15.00, "Indian delicacy"),
	(1, 5, 'Pizza', 9.18, "Veg Pizza"),
	(2, 5, 'Burger', 4.32, "Burger with chicken patty"),
	(3, 5, 'French fries', 1.50, "French fries with ketchup"),
	(4, 5, 'Noodles', 6.00, "Noodles with meatballs"),
	(5, 5, 'Sphagetti', 12.00, "Sphagetti with meatballs"),
	(6, 5, 'Chicken Tikka', 15.00, "Indian delicacy"),
	(1, 6, 'Pizza', 9.18, "Veg Pizza"),
	(2, 6, 'Burger', 4.32, "Burger with chicken patty"),
	(3, 6, 'French fries', 1.50, "French fries with ketchup"),
	(4, 6, 'Noodles', 6.00, "Noodles with meatballs"),
	(5, 6, 'Sphagetti', 12.00, "Sphagetti with meatballs"),
	(6, 6, 'Chicken Tikka', 15.00, "Indian delicacy");
UNLOCK TABLES;