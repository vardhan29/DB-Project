USE Campus_Eats_Fall2020;

CREATE TABLE IF NOT EXISTS `Campus_Eats_Fall2020`.`item` (
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