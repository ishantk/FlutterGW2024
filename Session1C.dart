void main() {
  // Map Data Structure

  var title = "Half n Half Pizza";
  var ratings = 4.0;
  var originalPrice = 749;
  var dicountedPrice = 249;

  // var dish = {
  //   "title": "Half n Half Pizza",
  //   "ratings": 4.0,
  //   "originalPrice": 749,
  //   "dicountedPrice": 249
  // };

  Map<String, Object> dish = {
    "title": "Half n Half Pizza",
    "ratings": 4.0,
    "originalPrice": 749,
    "dicountedPrice": 249
  };

  print("dish: " + dish.toString());
  print("dish: ${dish["title"]}");
  print("dish: " + dish.runtimeType.toString());
}
