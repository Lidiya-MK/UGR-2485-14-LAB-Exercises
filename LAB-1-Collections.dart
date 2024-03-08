class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double averageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }
    return marks.reduce((a, b) => a + b) / marks.length;
  }
}

void main() {
  Student student = Student('Kebedech', [85, 90, 92, 78, 88]);
  print('${student.name}\'s average Mark is : ${student.averageMark().toStringAsFixed(2)}');
}
