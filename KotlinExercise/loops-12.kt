fun main() {
    
    print("Enter the starting no: ")
    val start = readLine()!!.toInt()
    print("Enter the ending no: ")
    val end = readLine()!!.toInt()

    println("The Prime numbers between $start and $end are:")

    var number = start


    while (number <= end) {
        var isPrime = true
        var divisor = 2


        while (divisor * divisor <= number) {
            if (number % divisor == 0) {
                isPrime = false
                break
            }
            divisor++
        }

        if (isPrime && number > 1) {
            println(number)
        }

       
        number++
    }
}
