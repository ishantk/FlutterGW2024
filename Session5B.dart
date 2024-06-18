class Dish {
  String name;
  double price;
  double discountedPrice;

  Dish(
      {required this.name, required this.price, required this.discountedPrice});

  @override
  toString() => "$name | $price | $discountedPrice";
}

void main() {
  List<double> prices = [250.21222, 1100, 4150.1265, 1975.88, 8000, 1200.3333];

  List<Dish> dishes = [
    Dish(name: "Burger", price: 100, discountedPrice: 100),
    Dish(name: "Noodles", price: 250, discountedPrice: 250),
    Dish(name: "Pizza", price: 300, discountedPrice: 300),
    Dish(name: "Samosa", price: 50, discountedPrice: 50),
    Dish(name: "Mojt0", price: 150, discountedPrice: 150)
  ];

  dishes
      .map((dish) => Dish(
          name: dish.name,
          price: dish.price,
          discountedPrice: 0.50 * dish.price))
      .toList()
      .forEach((element) => print(element));

  //prices.forEach((element) => print("\u20b9 $element"));

  //var stringPrices =
  //    prices.map((price) => "\u20b9 ${price.toStringAsFixed(2)}").toList();
  //stringPrices.forEach((element) => print(element));

  prices
      .map((price) => "\u20b9 ${price.toStringAsFixed(2)}")
      .toList()
      .forEach((element) => print(element));

  print("---------");

  prices
      .map((price) => 0.50 * price)
      .toList()
      .forEach((element) => print(element));
}
