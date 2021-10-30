# DB-Project - GROUP 1

## Team Members:

- Nishan Dhakal
- Varad Deshpande
- Vishnu Vardhan Domakuntla
- Praveen Kumar Gavara


## Project Introduction

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
- The items table will be included during the next iteration.

![Group 1 - EERD](https://i.ibb.co/ZWBGJKP/EERD.png)

## Data Dictionary
