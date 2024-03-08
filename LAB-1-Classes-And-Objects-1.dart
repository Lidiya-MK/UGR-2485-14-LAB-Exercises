import 'dart:math';


abstract class Shape {
 
  double area();
}


class Circle extends Shape {
  double radius;


  Circle(this.radius);


  @override
  double area() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;


  Square(this.side);


  @override
  double area() {
    return side * side;
  }
}

class Rectangle extends Shape {
  double width;
  double height;


  Rectangle(this.width, this.height);


  @override
  double area() {
    return width*height;
  }
}

void main() {
  // Create Circle and Square objects
  Circle circle1 = Circle(7);
  Square square1 = Square(8);
  Rectangle rectangle1 = Rectangle(8,9);

  // Calculate and print the areas
  print("Area of Circle: ${circle1.area().toStringAsFixed(2)}");
  print("Area of Square: ${square1.area().toStringAsFixed(2)}");
   print("Area of Rectabgle: ${rectangle1.area().toStringAsFixed(2)}");
}
