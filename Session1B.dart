void main() {
  //Set<String> users = {"john", "jennie", "jim", "jack", "john", "joe"};
  var users = {"john", "jennie", "jim", "jack", "john", "joe"};
  print(users);
  print(users.runtimeType.toString());
  print(users.length);
  //print(users[1]); -> Set does not support indexing..

  var prices = {10, 20, 30, 40, 50};
  print(prices);
  print(prices.runtimeType.toString());
  print(prices.length);
}
