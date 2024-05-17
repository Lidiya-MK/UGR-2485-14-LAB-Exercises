fun main() {
    
    print("Enter the length of side 1 please: ")
    val side1 = readLine()!!.toDouble()
    print("Enter the length of side 2 please: ")
    val side2 = readLine()!!.toDouble()
    print("Enter the length of side 3 please: ")
    val side3 = readLine()!!.toDouble()


    val triangleType = when {
        side1 == side2 && side2 == side3 -> "Equilateral"
        side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
        else -> "Scalene"
    }

    
    println("The triangle is $triangleType")
}
