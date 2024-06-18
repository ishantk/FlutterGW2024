void main() {
  List<double> cartValue = [
    250.21222,
    1100,
    4150.1265,
    1975.88,
    8000,
    1200.3333
  ];

  // List of Dish Objects

  // Average of the cart Value using map and reduce functions

  var result =
      cartValue.reduce((value, element) => value + element) / cartValue.length;
  print("Result is: ${result.toStringAsFixed(2)}");
}
