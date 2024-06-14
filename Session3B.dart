class Dish {
  // Attributes cannot be null
  String name;
  int price;
  String category;
  double rating;

  Dish(
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
  var dish1 =
      Dish(name: "Yellow Dal", price: 300, category: "Indian Veg", rating: 4.5);
  var dish2 =
      Dish(name: "Noodles", price: 250, category: "Chinese", rating: 4.0);

  print(dish1);
  print(dish2);
}
