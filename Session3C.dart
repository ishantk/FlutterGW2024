class Dish {
  // Attributes cannot be null
  String? name;
  int? price;
  String? category;
  double? rating;

  Dish() {
    name = "NA";
    price = 0;
    category = "NA";
    rating = 0.0;
  }

  // Named Constructor: We can create as many as constructors we wish to, but they will have name
  Dish.basic(
      {required this.name,
      required this.price,
      required this.category,
      required this.rating}) {}

  Dish.gold(
      {required this.name,
      required this.price,
      required this.category,
      required this.rating}) {}

  @override
  String toString() {
    return "[$name - $price - $category - $rating]";
  }
}

void main() {
  var dish1 = Dish();
  var dish2 = Dish();

  var dish3 = Dish.basic(
      name: "Samosa", category: "Indian Snacks", price: 20, rating: 4.8);

  var dish4 = Dish.gold(
      name: "Burger", category: "American Junk", price: 100, rating: 3.5);

  print(dish1);
  print(dish2);
  print(dish3);
  print(dish4);
}

// Code, sorting techniques
// For Understanding of Algos Refer: https://visualgo.net/en/sorting