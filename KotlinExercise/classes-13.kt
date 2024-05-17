class ShoppingCart {
    private val items = mutableMapOf<String, Double>()


    fun addItem(itemName: String, price: Double) {
        items[itemName] = price
    }

    
    fun removeItem(itemName: String) {
        items.remove(itemName)
    }

    
    fun calculateTotalPrice(): Double {
        return items.values.sum()
    }
}

fun main() {
    
    val cart = ShoppingCart()

    
    cart.addItem("Laptop", 999.99)
    cart.addItem("Phone", 699.99)
    cart.addItem("Headphones", 149.99)

    
    val totalPrice = cart.calculateTotalPrice()
    println("Total price: $$totalPrice")

    
    cart.removeItem("Phone")

    
    val updatedTotalPrice = cart.calculateTotalPrice()
    println("Updated total price: $$updatedTotalPrice")
}
