//: Playground - noun: a place where people can play

import UIKit


/*
 Pattern matching
 1. Switch/case
 */

let name = "JamesNguyen"

switch name {
case "James":
    print("Hello, James")
case "JamesNguyen":
    print("Hello James Nguyen")
default:
    print("Authentication failed")
}


let password = "123456"

switch (name, password) {
case ("JamesNguyen", "1234"):
    print("Hello, James Nguyen 1234")
case ("JameNguyen", "123456"):
    print("Hello, James Nguyen 1234556")
case ("JamesNguyen", "123456"):
    print("Hello, James Nguyen 1234556")
default:
    print("Who are you?")
}

let authentication = (name: name, password: password)

switch (authentication) {
case ("JamesNguyen", "1234"):
    print("Hello, James Nguyen 1234")
case ("JameNguyen", "123456"):
    print("Hello, James Nguyen 1234556")
case ("JamesNguyen", "123456"):
    print("Hello, James Nguyen Master of Swift")
default:
    print("Who are you?")
}

let authenWithIP = (name: name, password: password, ip: "192.168.1.1")

switch authenWithIP {
case ("JamesNguyen", "1234", _):
    print("Hello, James Nguyen 1234")
case ("JamesNguyen", "123456", _):
    print("Hello, James Nguyen Correctly IP Address")
case ("JamesNguyen", "123456", "192.169.2.2"):
    print("Hello, James Nguyen Master of Swift")
default:
    print("Who are you?")
}


func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    case (false, false):
        return String(number)
    }
}

print(fizzbuzz(number: 15))


/*
 2. Loops
 */

let james = (name: "jamesnguyen", password: "swift")
let vincent = (name: "vincenttran", password: "objectivec")
let leo = (name: "leole", password: "java")

let users = [james, vincent, leo]

for user in users {
    print(user.name)
}


for case ("jamesnguyen", "swift") in users {
    print("James Nguyen is master of Swift")
}

for case let (name, passwd) in users {
    print("\nUser \(name) has the password \(password)")
}

/*
 Matching optionals
 */

let nameOption: String? = "James Nguyen"
let passwordOption: String? = "12345"

switch (nameOption, passwordOption) {
case let (.some(nameOption), .some(passwordOption)):
    print("Hello, \(nameOption)")
case let (.some(nameOption), .none):
    print("Please enter a password")
default:
    print("Who are you?")
}

let data: [Any?] = ["Bill", nil, 69, "James"]

for case let .some(datum) in data {
    print(datum)
}

for case let datum? in data {
    print(datum)
}

enum WeatherType {
    case cloudy
    case sunny
    case windy
}

let today = WeatherType.cloudy


switch today {
case .cloudy:
    print("It's Cloudy")
case .sunny:
    print("It's Sunny")
case .windy:
    print("It's Windy")
default:
    print("It's Sunny")
}


/*
 Matching Types
 */

let view: AnyObject = UIButton()

switch view {
case is UIButton:
    print("Found a button")
case is UILabel:
    print("Found a label")
case is UISwitch:
    print("Found a switch")
case is UIView:
    print("Found a view")
default:
    print("Found something else")
}

for label in view.subviews where label is UIButton{
    print("Found a label with frame \(label.frame)")
}

for case let label as UILabel in view.subviews {
    print("Found a label with text \(label.text)")
}


let celebrities = ["Michael Jackson", "Taylor Swift", "MichaelCaine", "Adele Adkins", "Michael Jordan"]

for name in celebrities where !name.hasPrefix("Michael") && name.characters.count == 13 {
    print(name)
}

/*Nil coalescing*/
let singer: String? = "Bao Anh"
let unwrappedName = name ?? "Huyen My"
print(unwrappedName)









