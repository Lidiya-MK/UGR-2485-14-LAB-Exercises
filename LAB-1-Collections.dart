void main() {
  List<Map<String, dynamic>> shoppingCart = [];

  void addItem(String productName, double price, int quantity) {
    shoppingCart.add({'Product': productName, 'price': price, 'quantity': quantity});
  }

  void total() {
    double total = 0;
    for (var item in shoppingCart) {
      total += item['price'] * item['quantity'];
    }
    print('Total Price: \$${total.toStringAsFixed(2)}');
  }

  void removeItem(String productName) {
    shoppingCart.removeWhere((item) => item['Product'] == productName);
  }

  addItem('Shampoo', 700.99, 2);
  addItem('Nivea Soft', 500.50, 3);
  addItem('Broom', 100.50, 1);

  print('Shopping Cart: $shoppingCart');

  total();

  removeItem('Shampoo');
  
  print('After removing the shampoo this will be left in the cart: $shoppingCart');

  total();
}
