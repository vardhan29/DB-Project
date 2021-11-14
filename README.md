# DB-Project - GROUP 1

## Team Members:

- Nishan Dhakal
- Varad Deshpande
- Vishnu Vardhan Domakuntla
- Praveen Kumar Gavara


## Project Introduction
With the threat of the Coronavirus, food delivery services are more important than ever. Local restaurants are eager to find easy ways to have food delivered to customers without having to hire delivery employees. Even when things return to normal, many experts feel that food delivery will be something that we all will have become accustomed to as a part of our regular activities (even more than before). Students love food delivery services on campus. Campuses do not like the steady stream of visitors that may or may not have a formal connection with the university. Companies such as UberEats and GrubHub are happy to deliver on campus, but many schools are wondering if they should take control of the delivery and ensure that students and authorized university employees are the only ones delivering food on campus for safety and health reasons.

The project aims to add a rating system which allows the user of the system to rate both the delivery man as well as the restaurant. For every new order that the user places, he will have the opportunity to rate the restaurant from which he orders the food and the delivery man, who delivers the food at their place. The rating system will prove valuable feedback to the restaurant, delivery personnel and the potential customers who are planning to order from the restaurant. We are providing a five-star rating system for the project for the person as well as the restaurant.

## Business Rules
- Users can be faculty or students.
- All the delivery personnels are students.
- Each user must be registered on the application before placing the order.
- A registered user can place an order one to many times.
- Restaurants can have one to many menu items.
- Each order is placed, it is associated with one user, one restaurant and one delivery personnel.
- Each order placed has one or many items.
- In order to rate a restaurant and a delivery guy, customers must place an order.
- After the order has been delivered, the customer can rate the delivery person and the restaurant associated with that order only.
- Rating system will be a 5-star rating system as found on other delivery applications.
- Other users can view the overall rating of the restaurant at the time of ordering.
- Other users can view the overall rating of the delivery personnel at the time of order delivery.


## EERD (with new tables)

Changes Made :

- Added table ratings in the existing schema.
- Rating table is dependent on the orders table, and hence order_id appears as a foreign key in the table.
- The table has its own unique identifier: rating_id which acts as the primary key for the table.
- The other attributes include:
  * **driver_rating :** Provide rating to the delivery driver
  * **restaurant_rating :** Provide rating to the restaurant from which the food has been ordered.
  * **comments :** Allow user to add comments if any
  * **picture_upload :** Path to pictures directory of the server
- In the restaurant table, an additional column rating has been added which will have the average rating of each restaurant
- Added the item table which will have the food item prepared at a restaurant. Every item has an item_id, restaurant_id as the primary key.
- We have a composite primary key as same items can be present at different restaurant.
- We also have the item name and price_per_unit (Note that this is independent of the order total)
- We associates items with an order using order_item table. This table also has the quantity per item ordered.

![Group 1 - EERD](https://github.com/vardhan29/DB-Project/blob/8d1d14dd342646000fee372014e51f0be230e517/diagrams/EERD%20Deliverable%202.png)

## Data Dictionary
![image](https://user-images.githubusercontent.com/54319377/141686268-d8be0f43-bc83-4ef4-ba21-aaf238216bc5.png)



