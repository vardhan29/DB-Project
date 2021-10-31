USE Campus_Eats_Fall2020;

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
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (1, 1, 3, 2, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 'http://dummyimage.com/125x112.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (2, 2, 5, 1, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 'http://dummyimage.com/136x149.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (3, 3, 2, 1, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 'http://dummyimage.com/129x118.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (4, 4, 4, 4, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'http://dummyimage.com/104x109.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (5, 5, 4, 5, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'http://dummyimage.com/146x111.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (6, 6, 3, 2, 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 'http://dummyimage.com/124x124.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (7, 7, 3, 4, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 'http://dummyimage.com/146x149.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (8, 8, 3, 1, 'In quis justo. Maecenas rhoncus aliquam lacus.', 'http://dummyimage.com/106x115.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (9, 9, 1, 1, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 'http://dummyimage.com/101x108.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (10, 10, 2, 4, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 'http://dummyimage.com/136x126.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (11, 11, 1, 1, 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'http://dummyimage.com/105x129.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (12, 12, 3, 3, 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 'http://dummyimage.com/120x126.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (13, 13, 4, 3, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 'http://dummyimage.com/104x133.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (14, 14, 3, 1, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 'http://dummyimage.com/143x125.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (15, 15, 2, 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'http://dummyimage.com/145x115.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (16, 16, 5, 2, 'In sagittis dui vel nisl. Duis ac nibh.', 'http://dummyimage.com/134x112.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (17, 17, 2, 3, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'http://dummyimage.com/139x115.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (18, 18, 1, 3, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'http://dummyimage.com/117x116.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (19, 19, 3, 1, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 'http://dummyimage.com/119x140.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (20, 20, 2, 3, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 'http://dummyimage.com/131x125.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (21, 21, 4, 2, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'http://dummyimage.com/106x118.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (22, 22, 4, 2, 'Nulla ut erat id mauris vulputate elementum.', 'http://dummyimage.com/114x101.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (23, 23, 5, 5, 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', 'http://dummyimage.com/116x100.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (24, 24, 4, 3, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'http://dummyimage.com/116x120.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (25, 25, 4, 3, 'Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 'http://dummyimage.com/112x139.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (26, 26, 4, 1, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 'http://dummyimage.com/108x142.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (27, 27, 4, 3, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 'http://dummyimage.com/122x120.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (28, 28, 5, 4, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'http://dummyimage.com/138x104.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (29, 29, 5, 5, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'http://dummyimage.com/101x127.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (30, 30, 1, 3, 'Donec posuere metus vitae ipsum.', 'http://dummyimage.com/144x134.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (31, 31, 3, 2, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', 'http://dummyimage.com/138x105.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (32, 32, 2, 4, 'Phasellus id sapien in sapien iaculis congue.', 'http://dummyimage.com/117x106.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (33, 33, 3, 1, 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'http://dummyimage.com/116x143.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (34, 34, 5, 5, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', 'http://dummyimage.com/140x149.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (35, 35, 2, 5, 'Duis at velit eu est congue elementum.', 'http://dummyimage.com/107x103.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (36, 36, 3, 4, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', 'http://dummyimage.com/110x131.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (37, 37, 5, 3, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 'http://dummyimage.com/118x125.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (38, 38, 3, 1, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'http://dummyimage.com/126x117.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (39, 39, 4, 4, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 'http://dummyimage.com/148x101.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (40, 40, 4, 3, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 'http://dummyimage.com/123x128.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (41, 41, 5, 3, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'http://dummyimage.com/138x113.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (42, 42, 4, 5, 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 'http://dummyimage.com/143x140.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (43, 43, 1, 3, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'http://dummyimage.com/115x118.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (44, 44, 3, 3, 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'http://dummyimage.com/141x109.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (45, 45, 5, 5, 'In hac habitasse platea dictumst.', 'http://dummyimage.com/117x136.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (46, 46, 1, 3, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 'http://dummyimage.com/137x106.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (47, 47, 3, 2, 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 'http://dummyimage.com/145x123.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (48, 48, 3, 3, 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'http://dummyimage.com/111x116.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (49, 49, 3, 5, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', 'http://dummyimage.com/114x125.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (50, 50, 3, 2, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'http://dummyimage.com/142x126.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (51, 51, 3, 3, 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'http://dummyimage.com/118x148.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (52, 52, 5, 4, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 'http://dummyimage.com/132x122.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (53, 53, 4, 5, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'http://dummyimage.com/107x128.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (54, 54, 2, 4, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'http://dummyimage.com/117x130.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (55, 55, 4, 5, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 'http://dummyimage.com/112x122.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (56, 56, 5, 1, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'http://dummyimage.com/133x109.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (57, 57, 4, 2, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'http://dummyimage.com/116x139.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (58, 58, 2, 2, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'http://dummyimage.com/102x119.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (59, 59, 5, 1, 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'http://dummyimage.com/133x127.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (60, 60, 4, 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'http://dummyimage.com/132x117.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (61, 61, 4, 4, 'Maecenas rhoncus aliquam lacus.', 'http://dummyimage.com/128x133.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (62, 62, 2, 3, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'http://dummyimage.com/134x103.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (63, 63, 1, 1, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 'http://dummyimage.com/106x118.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (64, 64, 2, 5, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'http://dummyimage.com/126x132.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (65, 65, 1, 5, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 'http://dummyimage.com/103x129.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (66, 66, 1, 4, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 'http://dummyimage.com/112x138.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (67, 67, 1, 5, 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 'http://dummyimage.com/148x108.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (68, 68, 5, 1, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'http://dummyimage.com/121x104.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (69, 69, 1, 2, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'http://dummyimage.com/130x102.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (70, 70, 3, 3, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 'http://dummyimage.com/110x148.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (71, 71, 5, 1, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 'http://dummyimage.com/137x121.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (72, 72, 4, 4, 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'http://dummyimage.com/116x120.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (73, 73, 3, 1, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'http://dummyimage.com/134x128.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (74, 74, 1, 1, 'Nulla justo.', 'http://dummyimage.com/149x128.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (75, 75, 4, 5, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 'http://dummyimage.com/148x117.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (76, 76, 2, 2, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', 'http://dummyimage.com/129x129.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (77, 77, 2, 3, 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 'http://dummyimage.com/148x137.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (78, 78, 2, 4, 'Nam tristique tortor eu pede.', 'http://dummyimage.com/131x126.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (79, 79, 1, 4, 'Ut at dolor quis odio consequat varius.', 'http://dummyimage.com/102x111.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (80, 80, 4, 2, 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'http://dummyimage.com/102x103.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (81, 81, 2, 5, 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 'http://dummyimage.com/139x142.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (82, 82, 1, 3, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 'http://dummyimage.com/103x107.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (83, 83, 1, 2, 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 'http://dummyimage.com/134x125.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (84, 84, 5, 3, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'http://dummyimage.com/147x106.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (85, 85, 1, 4, 'Donec semper sapien a libero.', 'http://dummyimage.com/126x138.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (86, 86, 1, 4, 'Vivamus vestibulum sagittis sapien.', 'http://dummyimage.com/104x108.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (87, 87, 1, 5, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', 'http://dummyimage.com/103x127.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (88, 88, 3, 5, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'http://dummyimage.com/109x150.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (89, 89, 2, 5, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 'http://dummyimage.com/128x125.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (90, 90, 5, 1, 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 'http://dummyimage.com/128x127.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (91, 91, 5, 1, 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 'http://dummyimage.com/130x119.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (92, 92, 3, 1, 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', 'http://dummyimage.com/102x134.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (93, 93, 5, 1, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'http://dummyimage.com/139x109.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (94, 94, 2, 2, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 'http://dummyimage.com/135x136.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (95, 95, 3, 5, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'http://dummyimage.com/143x147.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (96, 96, 5, 4, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'http://dummyimage.com/102x143.png/dddddd/000000');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (97, 97, 3, 3, 'Cras in purus eu magna vulputate luctus.', 'http://dummyimage.com/125x119.png/cc0000/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (98, 98, 1, 1, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 'http://dummyimage.com/108x102.png/ff4444/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (99, 99, 1, 1, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 'http://dummyimage.com/131x109.png/5fa2dd/ffffff');
insert into rating (rating_id, order_id, driver_rating, restaurant_rating, comments, picture_upload) values (100, 100, 2, 2, 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 'http://dummyimage.com/147x108.png/dddddd/000000');

UNLOCK TABLES;