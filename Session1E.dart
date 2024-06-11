// Functions in Dart
/*  
  f(x) = y
  y = x*x + 1

  x:1
  f(1) = 2
  f(2) = 5
  .
  ..

  A function take inputs
  Has a body to compute
  And gives an output

*/

/*void f(int x) {
  int y = x * x + 1;
  print("y is: $y");
}*/

int f(int x) {
  int y = x * x + 1;
  //print("y is: $y");
  return y;
}

void main() {
  int result = f(2);
  print("Result is:" + result.toString());
}
