fun main() {
    
    print("Enter your number please: ")
    var number = readLine()!!.toInt()

    
    var originalNumber = number
    var reversedNumber = 0


    while (originalNumber > 0) {
        val remainder = originalNumber % 10
        reversedNumber = reversedNumber * 10 + remainder
        originalNumber /= 10
    }

    if (number == reversedNumber) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}
