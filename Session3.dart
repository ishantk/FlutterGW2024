/* OOPS
// Object Oriented Programming Structure

// What is an Object ?
// 1. In Real Life
      Object is anything which exists
      eg: chair, table, laptop, etc..

      Class: Its representation of Object (Drawing of an Object)

   2. In Computer Science
      Object is a Storage Container (Box)
      It is specifically targeted to create a Multi Value Container
      Homo/Hetro

      Class: Is a code, which represents an object in memory

   Priciple of OOPS
    1. Think of Object
    2. Write its Class (Representation of an Object)
    3. Create Real Object From Class in the Memory


  Requirements/Scope Of Work
    John wants to get a Food Delivery App developed.
    App should have restaurants listed and every restaurant should have a menu of Dishes.
    Customer should be able to add dishes to cart and place the order to restaurant
    Delivery person should visit restaurant, pickup order and deliver to Cutomer
    Customer can pay in multiple payment methods.

    1.
    Think/Find/Trace Objects in requirement
    Object is the one, which has lot of data associated to it
    
        [Object]: [Attributes...]
    eg: Customer: name, phone, email, gender, address etc...
        Restaurant: name, phone, email, address, ratings, operatingHours, menu etc..
        Dish: name, price, category, rating etc...
        Menu: name, numOfDishes, dishes
        Order: orderNumber, customer, restaurant, dishes, total, taxes etc...

        Once, we have traced/found objects i.e. written all of the requried 
        details which needs to be used in software

        Then, find relationships between objects..
        1. Has-A
            1 to 1
              1 Restaurant has 1 Menu
            1 to many
              1 Restaurant has many Menus
              1 Customer has many Addresses
              1 Customer can place many Orders
            many to many
              many Customers can place many Orders

        2. Is-A
            Inheritance
            eg: Profile Object, Customer Object, Restaurant Object
                Profile is parent to Customer and Restaurant

*/

// 1. Think of an Object
//    Dish: name, price, category, rating

// 2. Create its Class (Respresentation of an Object)
// We are coding the way object should be in the memory
class Dish {
  // Dish class represents Dish Object
  // Attributes of Dish Object and has nothing to do with class
  // In Dart, we need to create them as Optional. They can hold null value as well.
  String? name;
  int? price;
  String? category;
  double? rating;
}

void main() {
  //3. Create Object using the class in memory.
  // Object Construction Statement
  Dish dish1 = Dish();
  print(dish1);
  print(dish1.runtimeType.toString());
  print(dish1.hashCode.toString());

  // Operations on Object
  // 1. Read Operation
  print(
      "Details of dish1: ${dish1.name}, ${dish1.price}, ${dish1.category}, ${dish1.rating}");

  // 2. Write Operation
  dish1.name = "Dal Makhani";
  dish1.price = 300;
  dish1.category = "Indian Veg";
  dish1.rating = 4.5;

  print(
      "Details of dish1: ${dish1.name}, ${dish1.price}, ${dish1.category}, ${dish1.rating}");

  // 3. Update Operation
  dish1.name = "Maharaja Dal Makhani";
  dish1.price = 375;

  print(
      "Details of dish1: ${dish1.name}, ${dish1.price}, ${dish1.category}, ${dish1.rating}");

  // Delete Operation: Deletion is part of Garbage Collector.
  // You as developer is relaxed. Objects which are no longer required will be deleted automaticall from memory

  // Create another object
  Dish dish2 = Dish();
  dish2.name = "Butter Paneer Masala";
  dish2.price = 450;
  dish2.category = "Indian Veg";
  dish2.rating = 4.8;

  print(dish2);
  print(dish2.runtimeType.toString());
  print(dish2.hashCode.toString());
  print(
      "Details of dish2: ${dish2.name}, ${dish2.price}, ${dish2.category}, ${dish2.rating}");

  // REFERENCE COPY OPERATION
  // Create a new Reference Variable dish3 and copy hashcode from dish1 to dish3
  Dish dish3 = dish1;
  print(
      "Details of dish3: ${dish3.name}, ${dish3.price}, ${dish3.category}, ${dish3.rating}");

  dish3.price = 570;
  dish3.rating = 3.8;

  print(
      "Details of dish1: ${dish1.name}, ${dish1.price}, ${dish1.category}, ${dish1.rating}");
}
