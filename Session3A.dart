class Dish {
  String? name;
  int? price;
  String? category;
  double? rating;

  // Dish Constructor: Same name as that of class name
  // Default or No Arg Constructor
  /*Dish() {
    name = "Yellow Dal";
    price = 275;
    category = "Indian Veg";
    rating = 4.5;
  }*/

  // You can create only one constructor
  // Parametrized Constructor
  Dish(String name, int price, String category, double rating) {
    this.name = name;
    this.price = price;
    this.category = category;
    this.rating = rating;
  }

  @override
  String toString() {
    return "[$name - $price - $category - $rating]";
  }
}

void main() {
  var dish1 = Dish("Yellow Dal", 300, "Indian Veg", 4.5);
  var dish2 = Dish("Noodles", 250, "Chinese", 4.0);
  print(dish1);
  print(dish2);
}
