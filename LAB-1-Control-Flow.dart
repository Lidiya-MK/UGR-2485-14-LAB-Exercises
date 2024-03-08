//Exercise 1 for conrol flow statements
import 'dart:io';

void main() {
  print("Enter an integer you would like to check:");
  String userInput = stdin.readLineSync() ?? '';
  int number = int.tryParse(userInput) ?? 0;


  if (!(number % 2 == 0)) {
    print("$number is odd.");
  } else {
    print("$number is even.");
  }
}
