void main() {
  String verifyNumberType(double number) {
    if (number > 0) {
      return "Number is positive";
    } else if (number == 0) {
      return "Number is 0";
    } else if (number < 0) {
      return "Number is negative";
    } else {
      return "Type a valid number";
    }
  }

  print(verifyNumberType(-0));
}
