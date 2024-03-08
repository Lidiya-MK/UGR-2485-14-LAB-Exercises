class Person {
  String name;
  int age;
  String address;
  String occupation;

  Person(this.name, this.age, this.address, this.occupation);

  void displayInfo() {
    print("The person's name is $name. They are $age years old. They are currently living in $address, and they are a  $occupation.");
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;


  Student(String name, int age, String address, String occupation, this.rollNumber, this.marks)
      : super(name, age, address, occupation);


  int totalMark() {
    return marks.reduce((mark1, mark2) => mark1 + mark2);
  }

  // Method to calculate average marks
  double averageMark() {
    if (marks.isNotEmpty) {
      return totalMark() / marks.length;
    } else {
      return 0.0;
    }
  }

  // Override displayInfo to include student-specific information
  @override
  void displayInfo() {
    super.displayInfo();
    print("Roll Number: $rollNumber");
    print("Marks: $marks");
  }
}

void main() {
  // Create Student objects
  Student student1 = Student("Abebe Beso", 20, "WoloSefer", "Student", 101, [85, 90, 92]);
  Student student2 = Student("Chala Daba", 22, "Kasanches", "Student", 102, [78, 85, 90]);

  // Display student information
  print("Initial Student Information:");
  student1.displayInfo();
  print("\n");
  student2.displayInfo();
  print("\n");

  // Calculate and print total and average marks
  print("${student1.name}- Total Marks: ${student1.totalMark()}, Average Marks: ${student1.averageMark().toStringAsFixed(2)}");
  print("${student2.name} - Total Marks: ${student2.totalMark()}, Average Marks: ${student2.averageMark().toStringAsFixed(2)}");
}
