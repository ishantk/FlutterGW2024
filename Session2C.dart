int getMax(var data, int length) {
  if (length == 1) {
    return data[0];
  } else {
    var previous = getMax(data, length - 1);
    var current = data[length - 1];

    if (previous > current) {
      return previous;
    } else {
      return current;
    }
  }
}

void main() {
  var numbers = [1, 3, 5, 9, 7];
  int result = getMax(numbers, numbers.length);
  print("Maximum is: $result");
}


// HW: Any problem on recursion in memory