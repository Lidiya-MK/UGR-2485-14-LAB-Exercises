fun factorial(n: Int): Long {
    return if (n <= 1) {
        1
    } else {
        n * factorial(n - 1)
    }
}

fun main() {
    
    print("Enter a number: ")
    val number = readLine()!!.toInt()


    val result = factorial(number)

    
    println("The factorial of $number is $result")
}
