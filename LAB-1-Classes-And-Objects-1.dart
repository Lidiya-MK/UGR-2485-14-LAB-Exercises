class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double totalCost() {
    return price * quantity;
  }
}

void main() {
  Product myProduct = Product("Gucci Bag", 10000.0, 3);


  double totalCost = myProduct.totalCost();
  print("The total cost for the ${myProduct.name}/s is  \$${totalCost.toStringAsFixed(2)}");
}
