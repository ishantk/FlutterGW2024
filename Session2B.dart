void main() {
  // for (int idx = 1; idx <= 10; idx++) {
  //   print(idx);
  // }

  printNumber(1);
}

void printNumber(var num) {
  print(num);

  if (num < 10) {
    printNumber(num + 1);
  }
}
