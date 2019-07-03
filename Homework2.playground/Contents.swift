/*
 Homework Assignment #2: Collections
 
 What are the differences between a tuple and an array?
 
 A tuple is a comma-separated list of types, enclosed in parentheses, while an array is a list of comma-separated items of the same type enclosed in square brackets.
 
 When would each be appropriate too use?
 
 Tuples can be used to store related different-type values but arrays to create a collection of same-type values as in the example below, where I created an array of remindes, being each reminder a tuple of a string representing the category name and the tasks related with the category, being tasks an array of string values.
 
 What are ranges?
 
 Collections of all values included in an given numeric interval.
 
 Why would you use one instead of an array or tuple?
 
 I would use it if I want to create a collection and I just want to specify the first and last element instead of defining all the values in the middle
 */

// Arrays and tuples example

let reminders: [(category: String, tasks: [String])] = [
    ("work", ["log spend time", "send financial report"]),
    ("aniversary", ["buy flowers", "reserve restaurant", "get babysitter"]),
]

for (category, tasks) in reminders {
    print("\(category) tasks:")
    for task in tasks {
        print("[ ] \(task)")
    }
}

// Ranges example

let validAgesRange = 18...40
let validAgesArray = [18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]

var applicantAge = 20;

print("range: \(applicantAge) is \(validAgesRange.contains(applicantAge) ? "" : "not ") between \(validAgesRange.lowerBound) and \(validAgesRange.upperBound)")
print("array: \(applicantAge) is \(validAgesArray.contains(applicantAge) ? "" : "not ") between \(validAgesArray.first ?? 0) and \(validAgesArray.last ?? 0)")

