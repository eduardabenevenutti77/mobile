void main() {
  List<int> numbers = [
    21,
    12,
    432,
    422,
    424,
    9,
    100,
    718,
    100000,
    100,
    9999999,
    2,
    0,
    -100,
    -909999,
    10,
  ];
  int biggestNumber = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    numbers[i] > biggestNumber ? biggestNumber = numbers[i] : null;
  }
  print("The biggest number is $biggestNumber");
}
