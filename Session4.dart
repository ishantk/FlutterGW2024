class Dish {
  // Attributes: Property of Object [non static]
  String name;
  int price;
  //int? quantity;

  int quantity;

  // Attributes: Property of Class [static]
  static int totalItems = 0;
  static int totalDishObjects = 0;

  Dish({required this.name, required this.price, required this.quantity}) {
    totalDishObjects++;
    totalItems += quantity;
  }

  void increment() {
    //quantity = quantity! + 1;
    quantity++;
    totalItems++; // static can be accessed from non static
  }

  void decrement() {
    //quantity = quantity! - 1;
    quantity--;
    totalItems--;
  }

  static void showTotalDishes() {
    print("Total Items: ${Dish.totalItems}");
    //print(quantity); error: // non static cannot be accessed from static
  }

  @override
  String toString() {
    return "[$name - $price - $quantity - $totalItems - $totalDishObjects]";
  }
}

void main() {
  var dish1 = Dish(name: "Samosa", price: 20, quantity: 1);
  var dish2 = Dish(name: "Burger", price: 100, quantity: 1);
  var dish3 = dish1;

  dish1.increment();
  dish2.increment();

  dish1.increment();
  dish2.increment();

  dish3.decrement();

  print(dish1);
  print(dish2);
  print(dish3);

  //print("Total Dishes: ${Dish.totalDishes}");
  //Dish.showTotalDishes();
}
