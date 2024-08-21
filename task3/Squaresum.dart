int squareSum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number * number;
  }
  return sum;
}

void main() {
  print(squareSum([1, 2, 2]));
}