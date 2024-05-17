fun main() {
    var sum = 0


    for (num in 1..50) {
    
        if (num % 2 == 0) {
        
            sum += num
        }
    }

   
    println("The sum is : $sum")
}
