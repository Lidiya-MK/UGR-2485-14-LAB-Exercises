import 'dart:io';

void main() {
  try {
    stdout.write('Enter a number: ');
    String userInput = stdin.readLineSync() ?? '';
    int number = int.parse(userInput);
    print('Integer value: $number');
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}
