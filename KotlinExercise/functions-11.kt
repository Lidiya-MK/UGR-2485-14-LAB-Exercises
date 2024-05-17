fun sortArray(arr: Array<Int>): Array<Int> {
    
    arr.sort()
    return arr
}

fun main() {
    
    val numbers = arrayOf(5, 3, 8, 1, 2, 7)


    println("Original array: ${numbers.joinToString(", ")}")


    val sortedNumbers = sortArray(numbers)

    
    println("Sorted array: ${sortedNumbers.joinToString(", ")}")
}
