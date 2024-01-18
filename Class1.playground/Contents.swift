import UIKit

var age = 12

var ageTwo: Int? = 12

print("\(ageTwo!)")

var name: String? = "Emiliano"



print("\(name!)")

let pi = 3.14

//pi =  12.22

var doubleValue: Double = 10.002233

var floatValue: Float = 10.23


var anyValue: Any

let numbers = [1,2,3,4,5]


for number in numbers{
    print(number)
}

let weekdays = ["Monday","Tuesday","Wednesday","Thursday","Friday"]


for (index,day) in weekdays.enumerated(){
    print("\(index + 1 ). \(day)")
}

//Method 1

func greet(name: String){
    print("Method: 1 Hello \(name)" )
}

greet(name: "Jerry Joy")

//Method 2

func greetTwo(_ name: String){
    print("Method: 2 Hello \(name)" )
}

greetTwo("Jerry Joy")

//Method 3

func greetThree(person name: String){
    print("Method: 2 Hello \(name)" )
}

greetThree(person: "Jerry Joy")


let temp = 25

if temp > 30 {
    print("Greater")
} else if (temp == 30) {
    print("Something")
} else {
    print("Smaller")
}


func grade (_ number : Int){
    switch number {
    case 0..<60:
        print("fail")
    case 60..<70:
        print("D")
    case 70..<80:
        print("C")
    case 80..<90:
        print("B")
    case 90..<100:
        print("B")
    default:
        print("DROP OUT!")
    }
}

grade(101)


func reverseString(_ string : String) -> String {
    
    var res = ""
    for char in string{
        res = "\(char)" + res
    }
    return res
    
}

print(reverseString("ola"))

func question1(_ array : [Int]) -> Int{
    var res = 0
    for number in numbers{
        if (number % 2 == 0 ){
            res += number
        }
    }
    return res
    
}

print(question1(numbers))

func question2(_ number : Int) -> Int {
    if number == 0 {
        return 1
    }
    
    var factorial = 1
    for i in 1...number{
        factorial = factorial * i
    }
    return factorial
    
}

print(question2(6))

func question3(_ letter : String) -> Bool{
    
    let word = reverseString(letter)
    
    
    if (word == letter){
        return true
    }else {
        return false
    }
    
}

print(question3("abc"))


func question4(_ number : Int) -> Bool{
    
    if number == 1{
        return true
    }
    
    for i in 2..<number {
        if (number % i == 0){
            return false
        }
    }
    return true
}

print(question4(3))

func question5(_ word : String) -> String{
    
    
    return reverseString(word)

}

print(question5("anal"))


func question6(_ numbers : [Int]) -> Int{
    
    var max : Int = 0
    for number in numbers {
        if number > max {
            max = number
        }
    }
    return max
}

print(question6(numbers))

func question7<T>(_ array: [T]) -> [T: Int] {
    var dict: [T: Int] = [:]

    for element in array {
        if let count = dict[element] {
            dict[element] = count + 1
        } else {
            dict[element] = 1
        }
    }

    return dict
}

// Example usage:
let array = [1, 2, 3, 1, 2, 1, 4, 5, 4]
let occurrences = question7(array)

// Print the results
for (element, count) in occurrences {
    print("\(element): \(count) times")
}

