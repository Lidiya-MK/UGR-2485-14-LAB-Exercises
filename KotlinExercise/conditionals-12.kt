fun main() {
    
    print("Enter the number of hours worked: ")
    val hoursWorked = readLine()!!.toDouble()
    print("Enter the hourly rate please: ")
    val hourlyRate = readLine()!!.toDouble()

    
    val overtimeThreshold = 40
    val overtimeRateMultiplier = 1.5


    val totalSalary = if (hoursWorked > overtimeThreshold) {
        val regularHours = overtimeThreshold
        val overtimeHours = hoursWorked - overtimeThreshold
        (regularHours * hourlyRate) + (overtimeHours * hourlyRate * overtimeRateMultiplier)
    } else {
        hoursWorked * hourlyRate
    }

    
    println("Total Salary: $$totalSalary")
}
