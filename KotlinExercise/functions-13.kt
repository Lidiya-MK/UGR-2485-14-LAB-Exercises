fun uniqueCharacters(str: String): Boolean {
 
    val seenChars = mutableSetOf<Char>()

    for (char in str) {
       
        if (char in seenChars) {
            return false
        }
    
        seenChars.add(char)
    }

  
    return true
}

fun main() {

    print("Enter a string: ")
    val input = readLine()!!

  
    val result = uniqueCharacters(input)


    if (result) {
        println("The string \"$input\" has all unique characters.")
    } else {
        println("The string \"$input\" does not have all unique characters.")
    }
}
