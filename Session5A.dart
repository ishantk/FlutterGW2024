class Restaurant {
  String name;
  double rating;

  //Restaurant(this.name, this.rating);
  Restaurant({required this.name, required this.rating});

  @override
  toString() => "$name | $rating";
}

void main() {
  List<Restaurant> restaurants = [
    //Restaurant("John's Pizza", 4.5),
    Restaurant(name: "John's Pizza", rating: 3.6),
    Restaurant(name: "Ice Cream Studio", rating: 4.5),
    Restaurant(name: "Punjab Grill", rating: 5.0),
    Restaurant(name: "Chilis", rating: 3.8),
    Restaurant(name: "Domios Pizza", rating: 3.5),
  ];

  restaurants.forEach((element) => print(element));

  /*for (int idx = 0; idx < restaurants.length; idx++) {
    if (restaurants[idx].rating >= 4.0) {
      print(restaurants[idx]);
    }
  }*/

  // Higher Order Function : where
  //var bestRestaurants =
  //    restaurants.where((restaurant) => restaurant.rating >= 4.0).toList();

  //for (int idx = 0; idx < bestRestaurants.length; idx++) {
  //  print(bestRestaurants[idx]);
  //}

  //bestRestaurants.forEach((restaurant) => print(restaurant));

  print("Best Restaurants:");
  restaurants
      .where((restaurant) => restaurant.rating >= 4.0)
      .toList()
      .forEach((restaurant) => print(restaurant));
}
