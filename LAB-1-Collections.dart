void main() {
  List<String> hobbies = ['Reading', 'writting', 'Photography'];

  print('Initial Hobbies: $hobbies');

  hobbies.add('Traveling');
  print('Adding Hobbies : $hobbies');

  hobbies.remove('Traveling');
  print('Removing Hobbies: $hobbies');

  hobbies.sort();
  print('Sorting Hobies: $hobbies');

  bool isListEmpty = hobbies.isEmpty;
  print('Empty? $isListEmpty');
}
