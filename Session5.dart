// add(num1, num2) {
//   var result = num1 + num2;
//   print("Result is: $result");
// }

// add(num1, num2) {
//   return num1 + num2;
// }

// Lambda Expression in General
// Arrow Function Approach
// Here, function is doing a single statement task
add(num1, num2) => num1 + num2;
sub(num1, num2) => num1 - num2;

myFun(num1, num2) => add(num1, num2) * sub(num1, num2);

printName(name) => print("Hello, $name");

void main() {
  print(myFun(30, 20));
  print(myFun(22.22, 20.33));
  //print(add("Hello ", "World"));

  printName("John");
}
