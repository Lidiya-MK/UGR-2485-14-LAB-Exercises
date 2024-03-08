import 'dart:io';

void main() {
 
  print("Enter a number:");
  int number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;


  if (number < 1 || number > 100) {
    print("Number out of range. Please enter a number between 1 and 100.");
  } else {

    if (primeChecker(number)) {
      print("$number is a prime number.");
    } else {
      print("$number is a composite number.");
    }
  }
}


bool primeChecker(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
