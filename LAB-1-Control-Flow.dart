//Exercise 4 for conrol flow statementsimport 'dart:io';
import "dart:io";
void main() {

  print("Enter the first number:");
  double firstNum = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;


  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync() ?? '';

  print("Enter the second number:");
  double secondNum = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;


  double result = 0.0;
  switch (operation) {
    case '+':
      result = firstNum + secondNum;
      break;
    case '-':
      result = firstNum - secondNum;
      break;
    case '*':
      result = firstNum * secondNum;
      break;
    case '/':
      
      if (secondNum != 0) {
        result = firstNum / secondNum;
      } else {
        print("OOPs!! cannot divide by Zero");
        return;
      }
      break;
    default:
      print("This operation is not recognized by the calculator. Please enter +, -, *, or /.");
      return;
  }


  print("Result: $result");
}

