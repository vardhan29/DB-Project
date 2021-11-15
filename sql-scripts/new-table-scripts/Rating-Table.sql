USE Campus_Eats_Fall2020;

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` int NOT NULL,
  `order_id` int NOT NULL,
  `driver_rating` decimal(1,0) DEFAULT NULL,
  `restaurant_rating` decimal(1,0) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `picture_upload` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `rating_id_UNIQUE` (`rating_id`),
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;


LOCK TABLES `rating` WRITE;
INSERT INTO `rating`  VALUES 
	(1, 1, 3, 2, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 'http://dummyimage.com/125x112.png/cc0000/ffffff'),
    (2, 2, 5, 1, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 'http://dummyimage.com/136x149.png/5fa2dd/ffffff'),
    (3, 3, 2, 1, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 'http://dummyimage.com/129x118.png/cc0000/ffffff'),
    (4, 4, 4, 4, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'http://dummyimage.com/104x109.png/dddddd/000000'),
    (5, 5, 4, 5, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'http://dummyimage.com/146x111.png/ff4444/ffffff'),
    (6, 6, 3, 2, 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 'http://dummyimage.com/124x124.png/5fa2dd/ffffff'),
    (7, 7, 3, 4, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 'http://dummyimage.com/146x149.png/dddddd/000000'),
    (8, 8, 3, 1, 'In quis justo. Maecenas rhoncus aliquam lacus.', 'http://dummyimage.com/106x115.png/ff4444/ffffff'),
    (9, 9, 1, 1, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 'http://dummyimage.com/101x108.png/5fa2dd/ffffff'),
    (10, 10, 2, 4, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 'http://dummyimage.com/136x126.png/5fa2dd/ffffff');
UNLOCK TABLES;