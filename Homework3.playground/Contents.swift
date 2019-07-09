/*
 Homework Assignment #3: Control Flow
 
 Write a program that prints the numbers from 1 to 100.
 
 But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz".
 
 For numbers which are multiples of both three and five print "FizzBuzz".

 Extra Credit:
 
 Instead of only printing "fizz", "buzz", and "fizzbuzz", add a fourth print statement: "prime". You should print this whenever you encounter a number that is prime (divisible only by itself and one).
 */

func isPrimeNumber(number: Int) -> Bool {
    if number <= 3 {
        return number > 1
    } else if number.isMultiple(of: 2) || number.isMultiple(of: 3) {
        return false
    }
    
    var i: Int = 5
    
    while i * i <= number {
        if number.isMultiple(of: i) || number.isMultiple(of: i + 2) {
            return false
        }
        i += 6
    }
    
    return true
}

for number in 1...100 {
    let isMultipleOf3: Bool = number.isMultiple(of: 3)
    let isMultipleOf5: Bool = number.isMultiple(of: 5)
    
    if (isPrimeNumber(number: number)) {
        print("prime")
    } else if (isMultipleOf3 && isMultipleOf5) {
        print("FizzBuzz")
    } else if (isMultipleOf3) {
        print("Fizz")
    } else if (isMultipleOf5) {
        print("Buzz")
    } else {
        print(number)
    }
}
