import 'dart:math';

void main() {
  List<int> numbers = List.generate(10, (index) => Random().nextInt(10));
  print('Old List of numbers: $numbers');

  Set<int> noRepeat = Set.from(numbers);
  print('List Of unique numbers: $noRepeat ');
}
