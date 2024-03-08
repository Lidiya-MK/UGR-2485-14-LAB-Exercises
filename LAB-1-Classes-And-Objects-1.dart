class Rectangle {
  double height;
  double width;
  
  Rectangle(this.width, this.height);
  
  double areaCalculator() {
    return height*width;
  }


  double perimeterCalculator() {
    return 2*(width+height);
  }
}

void main() {


  Rectangle myRectangle = Rectangle(7, 5);

  double perimeter = myRectangle.perimeterCalculator();
  print("The Perimeter of the rectangle is: $perimeter");

  double area = myRectangle.areaCalculator();
  print("The Area of the rectangle is: $area");



}
