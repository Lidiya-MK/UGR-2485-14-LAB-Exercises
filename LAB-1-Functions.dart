import 'dart:io';

void main() {

  print("Enter a string:");
  String inputWord = stdin.readLineSync() ?? '';

 
  String reversedWord= reverseString(inputWord);
  print(reversedWord);
}


String reverseString(String word) {
  String reverse = '';
  for (int i = word.length - 1; i >= 0; i--) {
    reverse += word[i];
  }
  return reverse;
}
