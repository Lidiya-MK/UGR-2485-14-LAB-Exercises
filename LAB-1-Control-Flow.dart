//**For this exercise I just assumed the number grades on a 4.0 scale
import 'dart:io';

void main() {

  print("Enter your grade:");
  double numberGrade = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  String letterGrade = '';
  switch (numberGrade) {
    case 4.0:
      letterGrade = 'A';
      break;
    case 3.75:
      letterGrade = 'A-';
      break;
    case 3.5:
      letterGrade = 'B+';
      break;
    case 3.0:
      letterGrade = 'B';
      break;
    case 2.75:
      letterGrade = 'B-';
      break;
    case 2.5:
      letterGrade = 'C+';
      break;
    case 2.0:
      letterGrade = 'C';
      break;
    case 1.75:
      letterGrade = 'C-';
      break;
    case 1.0:
      letterGrade = 'D';
      break;
    case 0.0:
      letterGrade = 'F';
      break;
    default:
      print("Please enter a valid grade number.");
      return;
  }

  print("Your grade is: $letterGrade");
}
