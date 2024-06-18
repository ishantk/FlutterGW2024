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
  List<double> cartValue = [
    250.21222,
    1100,
    4150.1265,
    1975.88,
    8000,
    1200.3333
  ];

  double total = 0;

  for (int idx = 0; idx < cartValue.length; idx++) {
    total += cartValue[idx];
  }

  print("Total Cart Value is: \u20b9 ${total.toStringAsFixed(2)}");

  var result = cartValue.reduce((value, element) => value + element);
  print("Result is: ${result.toStringAsFixed(2)}");

  List<Dish> dishes = [
    Dish(name: "Burger", price: 100, discountedPrice: 100),
    Dish(name: "Noodles", price: 250, discountedPrice: 250),
    Dish(name: "Pizza", price: 300, discountedPrice: 300),
    Dish(name: "Samosa", price: 50, discountedPrice: 50),
    Dish(name: "Mojt0", price: 150, discountedPrice: 150)
  ];

  List<Dish> cart = [dishes[0], dishes[2], dishes[3]];

  // Apply map and reduce :)
  var cartTotal = cart
      .map((element) => element.price)
      .toList()
      .reduce((value, element) => value + element);

  print("cartTotal is: ${cartTotal.toStringAsFixed(2)}");

  //var cartTotal = cart.reduce((value, element) => value + element.price);
  //print("Result is: ${result.toStringAsFixed(2)}");
}
