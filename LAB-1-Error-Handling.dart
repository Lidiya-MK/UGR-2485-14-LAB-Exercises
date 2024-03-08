double divideNumbers(double numerator, double denominator) {
  try {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException(); // or DoubleDivisionByZeroException()
    }
    return numerator / denominator;
  } catch (e) {
    print('Error: Division by zero');
    return double.nan;
  }
}

void main() {
  double result = divideNumbers(10, 0);
  print('Result: $result');
}
