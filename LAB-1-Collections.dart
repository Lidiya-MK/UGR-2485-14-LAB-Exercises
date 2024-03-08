void main() {
  Map<String, int> studentMarks = {'Bekelech': 85, 'Tamirat': 92, 'Tsege': 78};

  studentMarks['Debebe'] = studentMarks.putIfAbsent('Debebe', () => 88);
  print('Here Debebe was added: $studentMarks');

  studentMarks.forEach((name, mark) => print('$name: $mark'));

  checkNameExists(studentMarks, 'Bekelech');
  checkNameExists(studentMarks, 'Tamirat');
}

void checkNameExists(Map<String, int> marks, String name) {
  bool hasName = marks.containsKey(name);
  print('Does the map contain $name? $hasName');
}
