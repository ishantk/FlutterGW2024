void main() {
  //var usernames = ["john", "jennie", "jim", "jack", "joe"];
  // Hetrogeneous Container -> Multi Value Container
  //List usernames = ["john", "jennie", "jim", "jack", "joe", 10];

  // Homogenous Container
  List<String> usernames = ["john", "jennie", "jim", "john", "jack", "joe"];
  print(usernames);
  print(usernames.hashCode.toString());
  print(usernames.runtimeType.toString());
  print(usernames.length);
  print(usernames[1]);
  print(usernames[1].runtimeType.toString());
  print(usernames[0].hashCode.toString());
  print(usernames[3].hashCode.toString());
}
