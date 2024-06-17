// Bubble Sort Algorithm
// https://visualgo.net/en/sorting

void bubbleSort(List<int> data) {
  // Your algo goes here
  int n = data.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      print(">> $i | $j Comparing ${data[j]} with ${data[j + 1]}");
      if (data[j] > data[j + 1]) {
        int temp = data[j];
        data[j] = data[j + 1];
        data[j + 1] = temp;
        print(">> Swapped ${data[j]} with ${data[j + 1]}");
      }
    }
  }
}

void main() {
  //var numbers = [1, 3, 2, 5, 9, 7];
  List<int> numbers = [19, 7, 2, 11, 9, 17];

  print("Actual Numbers:");
  print(numbers);

  bubbleSort(numbers);

  print("Sorted Numbers:");
  print(numbers);
}
