//: Playground - noun: a place where people can play

import UIKit

class Target {
    var location = ""
}

var target = Target()
target.location = "Death Star"

var array = [1, 2, 3]
var anotherArray = Array(1...3)

//anotherArray.append(4)
//print(anotherArray.count)


if array == anotherArray {
    print("Equal")
}

//Closure are references
let printGreeting = {
    print("Closure are reference type!")
}

printGreeting()
let copyGreeting = printGreeting
copyGreeting()

func createIncrementer() -> () -> Void {
    var counter = 0
    
    return {
        counter += 1
        print(counter)
    }
}

let incrementer = createIncrementer()
incrementer()
incrementer()

let incerementerCopy = incrementer
incerementerCopy()
incrementer()



















