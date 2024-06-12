// Functions in Stack
// Reference Copy on Multi Value Container

void squareOfNumbers(var nums) {
  print("A. nums are: $nums and hashcode is: ${nums.hashCode}");

  for (int idx = 0; idx < nums.length; idx++) {
    nums[idx] = nums[idx] * nums[idx];
  }

  print("B. nums are: $nums and hashcode is: ${nums.hashCode}");
}

void main() {
  var numbers = [10, 20, 30, 40, 50];
  print("1. numbers are: $numbers and hashcode is: ${numbers.hashCode}");

  print(
      "1. numbers[0] is: ${numbers[0]} and hashcode is: ${numbers[0].hashCode}");
  squareOfNumbers(numbers);
  print("2. numbers are: $numbers and hashcode is: ${numbers.hashCode}");
  print(
      "1. numbers[0] is: ${numbers[0]} and hashcode is: ${numbers[0].hashCode}");
}
