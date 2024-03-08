class Person {
  String name;
  int age;
  String address;
  String occupation;

  
  Person(this.name, this.age, this.address, this.occupation);


  void displayInfo() {
  
    print("The persons name is  $name. They are $age years old. They are currently living in $address and their occupation is $occupation.");
  }
}

void main() {

  Person person1 = Person("Abebe Beso", 30, "WoloSefer", "Driver");
  Person person2 = Person("Chala Daba", 25, "Kasanches","Surgeon");



  person1.displayInfo();
  print("\n");
  person2.displayInfo();
  print("\n");

  
  person1.age = 37;
  person2.address = "Adey Ababa";

  person1.displayInfo();
  print("\n");
  person2.displayInfo();
}
