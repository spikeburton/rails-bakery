# Rails Bakery

Create a web application for a bakery to accept online orders

## User stories
* Create a new user/client
* Display a list of available cakes for purchase
* Create a new cake order that is associated with a user and a cake
* Display a list the bakers can use to fulfill orders. The list should show who has orderd which cakes.


## Models
* Cakes
   * Should have a name, and flavor attribute.
   * No need to use new or edit methods, just show a list

* Users
   * Should have a name and email address attribute
   * Create new account and view orders associated with an account
* Orders
   * Should have a user, cake, order_date and fulfiled attribtue (as in: has this order been completed?)
   * View all orders along with, the user and cake inforamtion for each order.
   * Should be able to mark an order as being complete/fulfiled
