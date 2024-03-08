//Exercise 2 for variables and data types
import "dart:io";
void main() {
  const int speedOfLight = 299792458;

  print("Enter the distance in meters:");
  String userInput = stdin.readLineSync() ?? '';
  double distance = double.tryParse(userInput) ?? 0.0;

  double time = distance / speedOfLight;

  print("Time for light to travel $distance meters: $time seconds");
}

