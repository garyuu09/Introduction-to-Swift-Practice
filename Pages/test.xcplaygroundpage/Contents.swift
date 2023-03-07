//: [Previous](@previous)

import Foundation


let array = [1,2,3,4,5]

var odds: [Int] = []
var evens: [Int] = []

for element in array {
    if element % 2 == 1 {
        odds.append(element)
        break
    }
    evens.append(element)
}

print(odds)     //[1]
print(evens)    //[]



//: [Next](@next)
