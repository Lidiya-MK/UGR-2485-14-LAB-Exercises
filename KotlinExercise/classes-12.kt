class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {


    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    
    fun isIsosceles(): Boolean {
        return side1 == side2 || side2 == side3 || side1 == side3
    }


    fun isScalene(): Boolean {
        return !isEquilateral() && !isIsosceles()
    }
}

fun main() {
    
    val equilateralTriangle = Triangle(3.0, 3.0, 3.0)

    
    val isoscelesTriangle = Triangle(4.0, 4.0, 5.0)

    
    val scaleneTriangle = Triangle(3.0, 4.0, 5.0)


    println("Triangle 1 is ${if (equilateralTriangle.isEquilateral()) "equilateral" else if (equilateralTriangle.isIsosceles()) "isosceles" else "scalene"}")
    println("Triangle 2 is ${if (isoscelesTriangle.isEquilateral()) "equilateral" else if (isoscelesTriangle.isIsosceles()) "isosceles" else "scalene"}")
    println("Triangle 3 is ${if (scaleneTriangle.isEquilateral()) "equilateral" else if (scaleneTriangle.isIsosceles()) "isosceles" else "scalene"}")
}
